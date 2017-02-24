//
//  PhotoPageViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/23.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

class PhotoPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    var photoArray: [UIImage] = []
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        let vc = R.storyboard.main.photoViewController()!
        vc.photo = UIImageView(image: photoArray[0])
        setViewControllers([vc], direction: .forward, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - UIPageViewControllerDataSource
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard index > 0 else {
            return nil
        }
        index -= 1
        let vc = R.storyboard.main.photoViewController()!
        vc.photo = UIImageView(image: photoArray[index])
        return vc
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard index < photoArray.count - 1 else {
            return nil
        }
        index += 1
        let vc = R.storyboard.main.photoViewController()!
        vc.photo = UIImageView(image: photoArray[index])
        return vc
    }
}
