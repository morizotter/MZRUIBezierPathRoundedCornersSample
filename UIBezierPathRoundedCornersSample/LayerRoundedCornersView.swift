//
//  LayerRoundedCornersView.swift
//  UIBezierPathRoundedCornersSample
//
//  Created by MORITA NAOKI on 2014/11/01.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

import UIKit

class LayerRoundedCornersView: UIView {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.clearColor()
    }
    
    override func drawRect(rect: CGRect) {
        UIImage(named: "rocket")?.drawInRect(self.bounds)
        
        let maskPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: CGRectGetWidth(self.bounds) / 2)
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.CGPath
        self.layer.mask = maskLayer;
    }
}
