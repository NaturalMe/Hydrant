//
//  AddHydrantTableViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/21.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit
import NextGrowingTextView

class AddHydrantTableViewController: UITableViewController {

    //@IBOutlet weak var descriptionTextView: NextGrowingTextView!
    
    /// 触摸取消
    ///
    /// - Parameter sender: 取消按钮
    @IBAction func touchCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /// 触摸选择位置按钮
    ///
    /// - Parameter sender: 选择位置按钮
    @IBAction func touchSelectLocationButton(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setting()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /// 设置UI
    func setting() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        // 隐藏 Grouped TableView 上边多余的间隔
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.1))
        //descriptionTextView.placeholderAttributedText = NSAttributedString(string: "请描述这个消火栓的特征，如周围特征建筑、店铺、所在街道等", attributes: [NSFontAttributeName: descriptionTextView.font!,NSForegroundColorAttributeName: UIColor.gray])
    }

}
