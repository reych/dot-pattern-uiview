//
//  DotView.swift
//  texturesDemo
//
//  Created by Chen, Rena on 6/21/17.
//  Copyright © 2017 Chen, Rena. All rights reserved.
//

import UIKit

class DotView: UIView {
    
    // MARK: Variables
    
    private var lineWidth = CGFloat(4)
    private var lineColor = UIColor.black
    
    private var originY: CGFloat!
    
    private var shapeLayer = CAShapeLayer()
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        print("dot awakened")
        self.backgroundColor = UIColor.clear
        self.frame.origin.y = self.frame.origin.y + self.bounds.size.height * 0.5
        originY = self.frame.origin.y
        
        addShapeLayer()
        
    }
    
    // MARK: Stuff
    
    private func addShapeLayer() {
        shapeLayer.path = createPath().cgPath
        shapeLayer.lineWidth = lineWidth
        shapeLayer.strokeColor = lineColor.cgColor
        let l = lineWidth * 2
        shapeLayer.lineDashPattern = [0, NSNumber(value: Float(l))]
        shapeLayer.lineCap = kCALineCapRound
        self.layer.addSublayer(shapeLayer)
    }
    
    // MARK: Drawing
    
    private func createPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.lineWidth = lineWidth
        
        let width = self.frame.size.width
        
        let rem = width.truncatingRemainder(dividingBy: lineWidth*2)
        let drawWidth = width - (rem) + lineWidth
        let startPositionX = (width - drawWidth) * 0.5 + lineWidth
        
        path.move(to: CGPoint(x: startPositionX, y: lineWidth*0.5))
        path.addLine(to: CGPoint(x: drawWidth, y: lineWidth*0.5))
        
        return path

    }
    
    // MARK: Utility
    
    // Redraw with dot color 'color' and line width (how thick it is) 'width'.
    func redraw(color: UIColor, width: CGFloat) {
        lineWidth = width
        lineColor = color
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.path = createPath().cgPath
    }
    
    // Set color before drawing.
    func setLineColor(color: UIColor) {
        lineColor = color
    }
    
    // Set position back to original.
    func resetAnimation() {
        self.frame.origin.y = originY
    }
    
    // Animate position up delta y.
    func animateUp(y: CGFloat) {
        UIView.animate(withDuration: 1, animations: {() -> Void in
            self.frame.origin.y = self.originY - y
        })

    }


}
