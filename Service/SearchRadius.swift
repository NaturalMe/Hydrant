//
//  SearchRadius.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/20.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import Foundation

/// 存储搜索半径
struct SearchRadius {
    let userDefualt = UserDefaults.standard
    let key = "SearchRadius"
    
    func set(i: Int) {
        userDefualt.set(i, forKey: key)
    }
    
    func get() -> Int{
        return userDefualt.integer(forKey: key)
    }

}
