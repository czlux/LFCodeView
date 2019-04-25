//
//  Views.swift
//  CustomKB
//
//  Created by ylw on 2019/4/23.
//  Copyright © 2019 ylw. All rights reserved.
//

import Foundation
import UIKit

//UIKeyInput
public class PwdView:UIView,UIKeyInput{
   
   public var text: String = ""
    
   public var shapLayer = CAShapeLayer.init()
    
   public override init(frame: CGRect) {

        super.init(frame: frame)
       
   
        let path = UIBezierPath(rect: CGRect(x: 10, y: 1, width: 1, height: 20))
        
        shapLayer.strokeColor = UIColor.darkGray.cgColor
        shapLayer.fillColor = UIColor.clear.cgColor
        shapLayer.lineWidth = 1
        shapLayer.path = path.cgPath
        
        self.layer.addSublayer(shapLayer)
        
        let animation = CABasicAnimation.init()
        animation.keyPath = "opacity"
        animation.fromValue = 0
        animation.toValue = 1
        animation.repeatCount = HUGE
       
        animation.duration = 0.9
        animation.timingFunction = CAMediaTimingFunction.init(name: .easeInEaseOut)
        
        shapLayer.add(animation, forKey: nil)
        
     
    }
    
   public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   public override var canBecomeFirstResponder: Bool{
        return true
    }
  

   public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

       
        _ =  self.becomeFirstResponder()

    }
  
   public private var keyboardType: UIKeyboardType{
        
        return .decimalPad
    }
  
   public var hasText: Bool{
         return text.count > 0
    }
    
   public func insertText(_ text: String) {
        print(text)
        self.text.append(text)
      
    }
    
   public func deleteBackward() {
       
    }
   public override func draw(_ rect: CGRect) {

       
    }
    
    
}
