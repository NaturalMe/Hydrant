//
//  Taraxacum.swift 意为蒲公英
//  Hydrant
//
//  Created by 张润良 on 2017/2/14.
//  Copyright © 2017年 zhangrunliang. All rights reserved.
//

import UIKit

extension UIView {
    
    /// 部分圆角
    ///
    /// - Parameters:
    ///   - corners: 需要实现为圆角的角
    ///   - radii: 圆角大小半径
    func corner(byRoundingCorners corners: UIRectCorner, radii: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radii, height: radii))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
}
