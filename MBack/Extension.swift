//
//  Extension.swift
//  MBack
//
//  Created by 麦志超 on 2018/2/7.
//  Copyright © 2018年 MZC. All rights reserved.
//

import Foundation
import UIKit

/// POP的方式
@objc public enum ENUMPopMethod: Int
{
    /// 直接返回到根视图
    case Root = 0
    /// 返回到上一个视图
    case Previous = 1
}

extension UIViewController
{
    // MARK: - 自定义返回按钮
    /// 自定义返回按钮
    public func MBackButton(image: UIImage, popMethod: ENUMPopMethod? = ENUMPopMethod.Previous, title: String? = nil, leftEdge: CGFloat? = -10)
    {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        
        button.setImage(image, for: .normal)
        
        if title != nil
        {
            button.setTitle(title, for: .normal)
            button.setTitleColor(UIColor.black, for: .normal)
            button.titleEdgeInsets = UIEdgeInsets(top: 0, left: leftEdge! - 5, bottom: 0, right: 0)
        }
        
        button.tag = (popMethod?.rawValue)!
        button.addTarget(self, action: #selector(goback(sender:)), for: .touchUpInside)
        button.contentHorizontalAlignment = .left
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: leftEdge!, bottom: 0, right: 0)
        
        let leftBarButton = UIBarButtonItem(customView: button)
        
        self.navigationItem.leftBarButtonItem = leftBarButton
    }
    
    @objc func goback(sender: UIButton)
    {
        if sender.tag == ENUMPopMethod.Previous.rawValue
        {
            self.navigationController?.popViewController(animated: true)
        }
        else
        {
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
}

