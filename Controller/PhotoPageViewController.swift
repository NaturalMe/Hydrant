//
//  PhotoPageViewController.swift
//  Hydrant
//
//  Created by 张润良 on 2017/2/23.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

/// 图片浏览翻页视图控制器
class PhotoPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    /// 点击图片数组的索引
    var touchIndex: Int = 0
    var vcs: [UIViewController]!
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        delegate = self
        setViewControllers([vcs[touchIndex]], direction: .forward, animated: true, completion: nil)
        index = touchIndex
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setTitle(i: touchIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    /// 设置导航栏文字
    func setTitle(i: Int) {
        if let parent = parent {
            parent.title = "\(i + 1)/\(vcs.count)"
        } else {
            print("父VC是nil")
        }
        
    }

    // MARK: - UIPageViewControllerDataSource
    
    // 获取上一个页面
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = vcs.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard vcs.count > previousIndex else {
            return nil
        }
        
        return vcs[previousIndex]
    }
    
    // 获取下一个页面
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = vcs.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = vcs.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        
        return vcs[nextIndex]
    }
    
    // MARK: - UIPageViewControllerDelegate
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if completed {
            setTitle(i: index)
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
        guard let viewControllerIndex = vcs.index(of: pendingViewControllers[0]) else {
            return
        }
        index = viewControllerIndex
    }
}
