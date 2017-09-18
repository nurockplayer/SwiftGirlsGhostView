//
//  BaseXibView.swift
//  SwiftGirlsGhostView
//
//  Created by Tachikoma on 2017/9/17.
//  Copyright © 2017年 tachikoma. All rights reserved.
//

import UIKit

@IBDesignable
class BaseXibView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        let bundle = Bundle(for: self.classForCoder)
        let nib = UINib(nibName: "\(self.classForCoder)", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }


}

