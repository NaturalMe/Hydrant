//
//  MapType.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/16.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import Foundation

/// 储存地图类型
struct MapType {
    let userDefualt = UserDefaults.standard
    let key = "MapType"
    
    func set(i: Int) {
        userDefualt.set(i, forKey: key)
    }
    
    func get() -> Int{
        return userDefualt.integer(forKey: key)
    }
}
