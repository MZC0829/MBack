//
//  ViewController2.swift
//  MBack
//
//  Created by 麦志超 on 2018/2/7.
//  Copyright © 2018年 MZC. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = "2"
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        self.MBackButton(image: #imageLiteral(resourceName: "icon_goback"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
