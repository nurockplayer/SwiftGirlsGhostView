//
//  ViewController.swift
//  SwiftGirlsGhostView
//
//  Created by Tachikoma on 2017/9/17.
//  Copyright © 2017年 tachikoma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ghostView: UIView!
    @IBOutlet var myView: UIView!
    @IBOutlet var btnRemoveGhostView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView.layer.cornerRadius = 12
        myView.layer.masksToBounds = true
        btnRemoveGhostView.layer.cornerRadius = 5
        btnRemoveGhostView.layer.masksToBounds = true
    }
    

    @IBAction func btnShowGhostView(_ sender: UIButton) {
        
        ghostView.frame = self.view.bounds
        self.view.addSubview(ghostView)
    }

    @IBAction func btnRemoveGhostView(_ sender: UIButton) {
        ghostView.removeFromSuperview()
    }

    
    @IBAction func btnAddChildViewController(_ sender: UIButton) {
        
        let childVC = self.storyboard!.instantiateViewController(withIdentifier: "ChildViewController")
        self.view.addSubview(childVC.view)
        addChildViewController(childVC)
        childVC.didMove(toParentViewController: self)
        
    }
    
    

}

