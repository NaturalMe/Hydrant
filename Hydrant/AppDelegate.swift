//
//  AppDelegate.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/10.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        AMapServices.shared().apiKey = "910dfce231268df1415590b348914044"
        return true
    }

}
