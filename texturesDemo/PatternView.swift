//
//  PatternView.swift
//  texturesDemo
//
//  Created by Chen, Rena on 6/21/17.
//  Copyright © 2017 Chen, Rena. All rights reserved.
//

import UIKit

class PatternView: UIView {
    
    // MARK: Variables.
    
    private var originY: CGFloat!
    private var originHeight: CGFloat!
    
    private let lineWidth = CGFloat(4)

    // MARK: Lifecycle.
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakened")
        self.backgroundColor = UIColor.init(patternImage: UIImage.init(imageLiteralResourceName: "diagonal.png"))

        originY = self.frame.origin.y
        originHeight = self.bounds.height

    }
    
    // MARK: Utility.
    
    // Set origin Y and height back to original before animation.
    func resetAnimation() {
        self.frame.origin.y = originY
        self.frame.size.height = originHeight;
    }
    
    // Animate height up delta y.
    func animateUp(y: CGFloat) {
        UIView.animate(withDuration: 1, animations: {() -> Void in
            self.frame.origin.y = self.originY - y
            self.frame.size.height = self.originHeight+y
        })
    }

}
