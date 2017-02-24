//
//  SelectLocationViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/21.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

class SelectLocationViewController: UIViewController, AMapSearchDelegate, MAMapViewDelegate {

    /// 高德地图
    @IBOutlet weak var mapView: MAMapView!
    
    /// 地址标签
    @IBOutlet weak var addressLabel: UILabel!
    
    /// 触摸定位按钮
    ///
    /// - Parameter sender: 定位按钮
    @IBAction func touchLocate(_ sender: Any) {
        self.mapView.setCenter(mapView.userLocation.coordinate, animated: true)
    }
    
    /// 触摸确认按钮
    ///
    /// - Parameter sender: 确认按钮
    @IBAction func touchConfirm(_ sender: Any) {
        
    }
    
    /// 搜索功能
    var search: AMapSearchAPI!
    
    /// 选择的坐标
    var selectCoordinate: CLLocationCoordinate2D!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.setting()
        mapView.delegate = self
        initSearch()
        setting()
    }

    fileprivate func setting() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        addMarker()
    }
    
    /// 初始化搜索功能
    func initSearch() {
        search = AMapSearchAPI()
        search?.delegate = self
    }
    
    /// 发起逆地理编码查询
    fileprivate func reGoecodeSearch(coordinate: CLLocationCoordinate2D) {
        let request = AMapReGeocodeSearchRequest()
        request.location = AMapGeoPoint.location(withLatitude: CGFloat(coordinate.latitude), longitude: CGFloat(coordinate.longitude))
        request.requireExtension = true
        search.aMapReGoecodeSearch(request)
    }
    

    
    /// 添加默认样式点标记
    ///
    /// - Parameter coordinate: 标记经纬度
    fileprivate func addAnnotation(coordinate: CLLocationCoordinate2D) {
        let pointAnnotation = MAPointAnnotation()
        pointAnnotation.coordinate = coordinate
        pointAnnotation.title = "方恒国际"
        pointAnnotation.subtitle = "阜通东大街6号"
        mapView.addAnnotation(pointAnnotation)
    }
    
    /// 添加地图中心选择标记
    fileprivate func addMarker() {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Marker-100"))
        let length: CGFloat = 40
        // 调整图片位置与坐标位置同步
        imageView.frame = CGRect(x: view.center.x - length / 2, y: view.center.y - 5, width: length, height: length)
        view.addSubview(imageView)
    }
    
    // MARK: - MAMapViewDelegate
    
    func mapView(_ mapView: MAMapView!, mapDidMoveByUser wasUserAction: Bool) {
        reGoecodeSearch(coordinate: mapView.centerCoordinate)
    }
    
    // MARK: - AMapSearchDelegate
    
    func onReGeocodeSearchDone(_ request: AMapReGeocodeSearchRequest!, response: AMapReGeocodeSearchResponse!) {
        
        guard response.regeocode != nil else {
            return
        }
        
//        let coordinate = CLLocationCoordinate2DMake(Double(request.location.latitude), Double(request.location.longitude))
//
//        let annotation = MAPointAnnotation()
//        annotation.coordinate = coordinate
//        annotation.title = response.regeocode.formattedAddress
//        annotation.subtitle = response.regeocode.addressComponent.province
//        mapView!.addAnnotation(annotation)
        
        addressLabel.text = response.regeocode.formattedAddress
        // FIXME: 存储坐标
        //selectCoordinate =
    }
    
    func aMapSearchRequest(_ request: Any!, didFailWithError error: Error!) {
        print("Error:\(error)")
    }
}
