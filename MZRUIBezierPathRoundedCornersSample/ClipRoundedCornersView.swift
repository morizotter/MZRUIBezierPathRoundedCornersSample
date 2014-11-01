//
//  ClipRoundedCornersView.swift
//  UIBezierPathRoundedCornersSample
//
//  Created by MORITA NAOKI on 2014/11/01.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

import UIKit

class ClipRoundedCornersView: UIView {

    override func awakeFromNib() {
        self.backgroundColor = UIColor.clearColor()
    }
    
    override func drawRect(rect: CGRect) {
        UIBezierPath(roundedRect: self.bounds, cornerRadius: CGRectGetHeight(self.bounds) / 2).addClip()
        UIImage(named: "rocket")?.drawInRect(self.bounds)
    }
}
