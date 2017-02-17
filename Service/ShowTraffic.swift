//
//  ShowTraffic.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/16.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import Foundation

/// 储存是否显示交通
struct ShowTraffic {
    let userDefualt = UserDefaults.standard
    let key = "ShowTraffic"
    
    func set(b: Bool) {
        userDefualt.set(b, forKey: key)
    }
    
    func get() -> Bool{
        return userDefualt.bool(forKey: key)
    }

}
