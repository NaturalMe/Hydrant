//
//  AMapViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/14.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit


/// 使用高德地图的视图控制器
class MapViewController: UIViewController {

    /// 高德地图
    @IBOutlet weak var mapView: MAMapView!
    
    ///包裹定位按钮、菜单按钮的视图
    @IBOutlet weak var buttonsView: UIView!
    
    /// 按下定位按钮
    ///
    /// - Parameter sender: 定位按钮
    @IBAction func touchLocateButton(_ sender: Any) {
        self.mapView.setCenter(mapView.userLocation.coordinate, animated: true)
    }
    
    /// 按下菜单按钮
    ///
    /// - Parameter sender: 菜单按钮
    @IBAction func touchMenu(_ sender: Any) {
        let vc = R.storyboard.main.menuViewController()!
        vc.modalPresentationStyle = .custom
        vc.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        vc.mapView = mapView
        present(vc, animated: true) {
            UIView.animate(withDuration: 0.4, animations: {
                vc.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
            })
        }
    }
    
    
    /// 高德定位管理模块
    fileprivate var locationManager: AMapLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.setting()
        setting()
        showHydrants()
    }
    
    /// 创建定位管理模块
    fileprivate func createLocationManager() {
        locationManager = AMapLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.locationTimeout = 2
        locationManager.reGeocodeTimeout = 2
    }
    
    /// 设置包裹定位按钮、菜单按钮的外观属性
    fileprivate func setting() {
        buttonsView.layer.cornerRadius = 10
        buttonsView.layer.shadowOffset = CGSize(width: 0, height: 0)
        buttonsView.layer.shadowRadius = 1
        buttonsView.layer.shadowOpacity = 0.5
        buttonsView.layer.shadowColor = UIColor.gray.cgColor
    }
    
    /// 显示附近消火栓
    fileprivate func showHydrants() {
    
    }
}
