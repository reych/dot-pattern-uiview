//
//  ViewController.swift
//  texturesDemo
//
//  Created by Chen, Rena on 6/21/17.
//  Copyright © 2017 Chen, Rena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Variables
    var originY: CGFloat!
    var originHeight: CGFloat!

    @IBOutlet weak var patternView: PatternView!
    @IBOutlet weak var dotView: DotView!
    
    // MARK: Lifecycle.
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IBActions
    
    @IBAction func goButtonPressed(_ sender: UIButton) {
        
        patternView.resetAnimation()
        patternView.animateUp(y: 200)
        
        dotView.resetAnimation()
        dotView.animateUp(y: 200)
    }
    
    @IBAction func redButtonPressed(_ sender: UIButton) {
        dotView.redraw(color: UIColor.red, width: 4)
    }
    
    @IBAction func greenButtonPressed(_ sender: UIButton) {
        dotView.redraw(color: UIColor.green, width: 4)
    }
    
    @IBAction func purpleButtonPressed(_ sender: UIButton) {
        dotView.redraw(color: UIColor.purple, width: 4)
    }

}

