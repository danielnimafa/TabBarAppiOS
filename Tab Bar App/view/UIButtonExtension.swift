//
//  UIButtonExtension.swift
//  Tab Bar App
//
//  Created by Daniel Nimafa on 19/01/19.
//  Copyright © 2019 Kipacraft. All rights reserved.
//

import Foundation
import UIKit


extension UIButton {
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.13
        pulse.fromValue = 0.975
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 1
        //pulse.initialVelocity = 0.5
        //pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
    
    func flash(completion: @escaping () -> () = {}) {
        
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            completion()
        }
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.1
        flash.fromValue = 1.0
        flash.toValue = 0.65
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 1
        
        layer.add(flash, forKey: nil)
        CATransaction.commit()
    }
    
    func shake(completion: @escaping () -> () = {}) {
        
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            completion()
        }
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
        CATransaction.commit()
    }
    
}
