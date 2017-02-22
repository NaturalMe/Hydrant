//
//  AppDelegate.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/10.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit
import AVOSCloud
import IQKeyboardManagerSwift
import DropDown


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        AMapServices.shared().apiKey = "910dfce231268df1415590b348914044"
        AVOSCloud.setApplicationId("cXj6sdvd5Ov7uYNdHixy2Xq7-gzGzoHsz", clientKey: "WqXyIijAExSQxmmYeG2WXj66")
        AVAnalytics.trackAppOpened(launchOptions: launchOptions)
        IQKeyboardManager.sharedManager().enable = true
        DropDown.startListeningToKeyboard()
        
        return true
    }

}
