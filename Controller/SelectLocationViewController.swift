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
    
    /// 搜索功能
    var search: AMapSearchAPI!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.setting()
        mapView.delegate = self
        initSearch()
    }

    /// 初始化搜索功能
    func initSearch() {
        search = AMapSearchAPI()
        search?.delegate = self
    }
    
    /// 发起逆地理编码查询
    func reGoecodeSearch() {
//        let request = AMapReGeocodeSearchRequest()
//        request.location = AMapGeoPoint.location(withLatitude: CGFloat(coordinate.latitude), longitude: CGFloat(coordinate.longitude))
//        request.requireExtension = true
    }
    
    func mapView(_ mapView: MAMapView!, mapDidMoveByUser wasUserAction: Bool) {
        if wasUserAction {
            addAnnotation(coordinate: mapView.centerCoordinate)
        }
    }
    
    /// 添加默认样式点标记
    ///
    /// - Parameter coordinate: 标记经纬度
    func addAnnotation(coordinate: CLLocationCoordinate2D) {
        let pointAnnotation = MAPointAnnotation()
        pointAnnotation.coordinate = coordinate
        pointAnnotation.title = "方恒国际"
        pointAnnotation.subtitle = "阜通东大街6号"
        mapView.addAnnotation(pointAnnotation)
    }
}
