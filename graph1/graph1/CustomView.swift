//
//  CustomView.swift
//  graph1
//
//  Created by Сергей Буланов on 07.11.2022.
//

import UIKit

@IBDesignable class CustomView: UIView {

  @IBInspectable  var strokeColor: UIColor = UIColor.cyan
  @IBInspectable  var starColor: UIColor = UIColor.systemPink
    
    override func draw(_ rect: CGRect) {
        
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {return}
        
        context.setStrokeColor(strokeColor.cgColor)
        context.setFillColor(starColor.cgColor)
        context.interpolationQuality = .high
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 40, y: 20))
        path.addLine(to: CGPoint(x: 45, y: 40))
        path.addLine(to: CGPoint(x: 65, y: 40))
        path.addLine(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 60, y: 70))
        path.addLine(to: CGPoint(x: 40, y: 55))
        path.addLine(to: CGPoint(x: 20, y: 70))
        path.addLine(to: CGPoint(x: 30, y: 50))
        path.addLine(to: CGPoint(x: 15, y: 40))
        path.addLine(to: CGPoint(x: 35, y: 40))
        path.close()
        
        context.addPath(path.cgPath)
        context.fillPath()
        context.strokePath()
        
        
    }
    

}
