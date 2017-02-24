//
//  PhotoViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/23.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

/// 图片视图控制器
class PhotoViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var photo: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        imageView.image = photo
    }
}
