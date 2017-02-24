//
//  MenuViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/16.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit
import DropDown

/// 菜单视图控制器
class MenuViewController: UIViewController {

    
    /// 菜单
    @IBOutlet weak var menu: UIView!
    
    /// 地图类型分段控制器
    @IBOutlet weak var mapTypeSegmentedControl: UISegmentedControl!
    
    /// 交通状况开关
    @IBOutlet weak var showTrafficSwitch: UISwitch!
    
    /// 搜索半径选择按钮
    @IBOutlet weak var searchRadiusButton: UIButton!
    
    /// 添加消火栓按钮
    @IBOutlet weak var addHydrantButton: UIButton!
    
    /// 报告问题按钮
    @IBOutlet weak var reportProblemButton: UIButton!
    
    /// 点击关闭按钮
    ///
    /// - Parameter sender: 关闭按钮
    @IBAction func touchClose(_ sender: Any) {
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.0)
        self.dismiss(animated: true, completion: nil)
    }
    
    /// 触摸地图类型分段控制器
    ///
    /// - Parameter sender: 地图类型分段控制器
    @IBAction func mapTypeSegmentedControlValueChanged(_ sender: UISegmentedControl) {
        mapView.mapType = MAMapType(rawValue: sender.selectedSegmentIndex)!
        mapType.set(i: sender.selectedSegmentIndex)
    }
    
    /// 触摸交通状况开关
    ///
    /// - Parameter sender: 交通状况开关
    @IBAction func showTrafficSwitchValueChanged(_ sender: UISwitch) {
        mapView.isShowTraffic = sender.isOn
        showTraffic.set(b: sender.isOn)
    }
    
    /// 触摸选择搜索半径按钮
    ///
    /// - Parameter sender: 搜索半径按钮
    @IBAction func touchSearchRadiusButton(_ sender: UIButton) {
        searchRadiusDropDown.show()
    }
    
    /// 触摸添加消火栓按钮
    ///
    /// - Parameter sender: 添加消火栓按钮
    @IBAction func touchAddHydrant(_ sender: Any) {
        let vc = R.storyboard.main.addHydrantNavigationController()!
        present(vc, animated: true, completion: nil)
    }
    
    /// 触摸报告问题按钮
    ///
    /// - Parameter sender: 报告问题按钮
    @IBAction func touchReportProblemButton(_ sender: Any) {

    }
    
    /// 存储地图类型
    fileprivate let mapType = MapType()
    
    /// 存储是否显示交通状况
    fileprivate let showTraffic = ShowTraffic()
    
    /// 存储搜索半径
    fileprivate let searchRadius = SearchRadius()
    
    /// 搜索半径下拉菜单
    fileprivate let searchRadiusDropDown = DropDown()
    
    /// 高德地图
    var mapView: MAMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setting()
    }

    /// 设置UI属性
    fileprivate func setting() {
        
        /// 设置搜索半径下拉菜单
        func settingSearchRadiusDropDown() {
            searchRadiusDropDown.anchorView = searchRadiusButton
            searchRadiusDropDown.dataSource = ["1000", "2000", "3000"]
            searchRadiusDropDown.selectionAction = { [unowned self] (index: Int, item: String) in
                self.searchRadiusButton.setTitle(item, for: .normal)
                self.searchRadius.set(i: index)
            }
            searchRadiusDropDown.selectRow(at: searchRadius.get())
            searchRadiusButton.setTitle(searchRadiusDropDown.selectedItem, for: .normal)
        }
        
        menu.corner(byRoundingCorners: [.topLeft, .topRight], radii: 10)
        mapTypeSegmentedControl.selectedSegmentIndex = mapType.get()
        showTrafficSwitch.setOn(showTraffic.get(), animated: false)
        settingSearchRadiusDropDown()
        addHydrantButton.contentHorizontalAlignment = .left
        reportProblemButton.contentHorizontalAlignment = .left
    }
}
