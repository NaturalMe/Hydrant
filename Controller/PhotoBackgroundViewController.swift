//
//  PhotoBackgroundViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/24.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

/// 大图查看背景视图控制器
class PhotoBackgroundViewController: UIViewController {

    /// 子视图控制器
    @IBOutlet weak var containerView: UIView!
    
    /// 触摸删除按钮
    ///
    /// - Parameter sender: 删除按钮
    @IBAction func touchDeleteButton(_ sender: UIBarButtonItem) {
        if let vc = childViewControllers.first as? PhotoPageViewController {
            print(vc.index)
            //vc.vcs.remove(at: vc.index)
            //photoArray.remove(at: vc.index)
            //navigationController?
            // FIXME: 设置一个变量把上一个VC传过来
            if let parent = parent as? AddHydrantTableViewController {
                print("suc")
                parent.photoArray.remove(at: vc.index)
                parent.photoCollectionView.reloadData()
            } else {
                print("fuck")
            }
            if photoArray.isEmpty {
                let _ = navigationController?.popViewController(animated: true)
            }
        }
    }
    
    
    /// 图片数组
    var photoArray: [UIImage]!
    
    /// 点击图片数组的索引
    var index: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 子视图控制器: 图片浏览翻页视图控制器
        if segue.identifier == R.segue.photoBackgroundViewController.photoPage.identifier {
            if let vc = segue.destination as? PhotoPageViewController {
                var vcs = [UIViewController]()
                for photo in photoArray {
                    let photoVC = R.storyboard.main.photoViewController()!
                    photoVC.photo = photo
                    vcs.append(photoVC)
                }
                vc.vcs = vcs
                vc.touchIndex = index
            }
        }
    }
    

}
