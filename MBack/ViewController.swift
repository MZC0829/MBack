//
//  ViewController.swift
//  MBack
//
//  Created by 麦志超 on 2018/2/7.
//  Copyright © 2018年 MZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "1"
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
    }
    
    // 方法1
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
    {
        
        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer
        {
            return self.navigationController!.viewControllers.count > 1
        }
        
        return true
        
    }
    
    //    // 方法2
    //    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
    //    {
    //        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer
    //        {
    //            return self.navigationController!.viewControllers.count > 1
    //        }
    //
    //        return true
    //    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

