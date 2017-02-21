//
//  MAMapViewExtension.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/21.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import Foundation

extension MAMapView {
    
    /// 设置地图属性
    func setting() {
        // 改变地图的缩放级别
        setZoomLevel(17, animated: false)
        
        // 显示定位蓝点
        showsUserLocation = true
        userTrackingMode = .follow
        
        // 显示室内地图(需要申请)
        //mapView.isShowsIndoorMap = true
        
        // 设置指南针位置
        compassOrigin = CGPoint(x: compassOrigin.x - 10, y: frame.height - 45)
        
        // 设置比例尺位置
        scaleOrigin = CGPoint(x: scaleOrigin.x, y: scaleOrigin.y + 20)
        
        // 设置地图类型
        mapType = MAMapType(rawValue: MapType().get())!
        
        // 设置是否显示交通
        isShowTraffic = ShowTraffic().get()
    }
}
