//
//  CurvedView.swift
//  BeizerPathDesign
//
//  Created by Next on 21/04/17.
//  Copyright © 2017 Next. All rights reserved.
//

import UIKit

let π:CGFloat = CGFloat(M_PI)

class CurvedView: UIView{

    
    override func draw(_ rect: CGRect) {
        let kLineWidth: CGFloat = 5
        
        let width = self.bounds.width
        let height = self.bounds.height
        let radius = width*0.3 + kLineWidth
        
        let path = UIBezierPath.init()
        path.move(to: CGPoint.init(x: 0, y: self.bounds.height/2))
        
        //controll points
        let leftControllPoint1 = CGPoint.init(x: width/3, y: self.bounds.height*0.75)
        let leftControllPoint2 = CGPoint.init(x: (self.bounds.width/2), y: self.bounds.height*0.75)
        
        path.addCurve(to: CGPoint.init(x: width/2 - radius, y: self.bounds.height*0.75), controlPoint1: leftControllPoint1, controlPoint2: leftControllPoint2)
        
        path.addArc(withCenter: CGPoint.init(x: width/2, y: height*0.75), radius: radius, startAngle: (180 * π/180), endAngle:  0, clockwise: false)
        
        
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: self.bounds.height/2))
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: 0))
        path.addLine(to: CGPoint.init(x: 0, y: 0))
        path.close()
        UIColor.init(red: 250/255, green: 202/255, blue: 0, alpha: 1).setFill()
        path.lineWidth = 2
//        path.fill()
        path.stroke()
        
        
        
        
        
        
//        let path = UIBezierPath.init()
//        path.move(to: CGPoint.init(x: 0, y: self.bounds.height/2))
//        
//        //controll points
//        let controllPoint1 = CGPoint.init(x: self.bounds.width/4, y: self.bounds.height*0.7)
//        let controllPoint2 = CGPoint.init(x: (self.bounds.width/2+self.bounds.width/4), y: self.bounds.height*0.7)
//        
//        
//        path.addCurve(to: CGPoint.init(x: self.bounds.width, y: self.bounds.height/2), controlPoint1: controllPoint1, controlPoint2: controllPoint2)
//        path.addLine(to: CGPoint.init(x: self.bounds.width, y: self.bounds.height/2))
//        path.addLine(to: CGPoint.init(x: self.bounds.width, y: 0))
//        path.addLine(to: CGPoint.init(x: 0, y: 0))
//        path.close()
//        UIColor.init(red: 250/255, green: 202/255, blue: 0, alpha: 1).setFill()
//        path.lineWidth = 0.0001
//        path.fill()
//        path.stroke()
        
        
        
        
        //MARK:- For Half Circle
//        let startAngle: CGFloat = 0
//        let endAngle: CGFloat = π
//        let point = CGPoint.init(x: self.bounds.width/2, y: 0)
//        var path = UIBezierPath(arcCenter: center ,
//                                radius: self.bounds.width/2,
//                                startAngle: startAngle,
//                                endAngle: endAngle,
//                                clockwise: true)
//        
//        path.close()
//        UIColor.init(red: 250/255, green: 202/255, blue: 0, alpha: 1).setFill()
//        path.lineWidth = 0.00001
//        path.fill()
//        path.stroke()
//        
    }
    

}
