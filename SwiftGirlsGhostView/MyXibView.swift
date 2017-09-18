//
//  MyXibView.swift
//  SwiftGirlsGhostView
//
//  Created by Tachikoma on 2017/9/17.
//  Copyright © 2017年 tachikoma. All rights reserved.
//

import UIKit

class MyXibView: BaseXibView {

    @IBOutlet var imageView: UIImageView!
    
    
    override func xibSetup() {
        super.xibSetup()
    
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let label = UILabel()
        label.text = "Swift Grils"
        label.sizeToFit()
        label.center = self.center
        label.textColor = UIColor.white

        var rect = label.frame
        rect.origin.y = self.frame.size.height / 10
        label.frame = rect
        
        self.addSubview(label)
    }
}
