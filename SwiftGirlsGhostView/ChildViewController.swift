//
//  ChildViewController.swift
//  SwiftGirlsGhostView
//
//  Created by Tachikoma on 2017/9/17.
//  Copyright © 2017年 tachikoma. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet var btnRemoveChildVC: UIButton!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView.layer.cornerRadius = 12
        myView.layer.masksToBounds = true
        btnRemoveChildVC.layer.cornerRadius = 5
        btnRemoveChildVC.layer.masksToBounds = true
    }


    @IBAction func btnRemoveChildVC(_ sender: UIButton) {
        self.view.removeFromSuperview()
        self.removeFromParentViewController()
    }

}
