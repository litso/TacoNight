//
//  RootViewController.swift
//  TacoNight
//
//  Created by Robert Manson on 1/12/15.
//  Copyright (c) 2015 Robert Manson. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set up some values to use in the curve
        let ovalStartAngle = CGFloat(90.01 * M_PI/180)
        let ovalEndAngle = CGFloat(90 * M_PI/180)
        let ovalRect = CGRectMake(97.5, 58.5, 125, 125)
        
        // create the bezier path
        let ovalPath = UIBezierPath()
        
        ovalPath.addArcWithCenter(CGPointMake(CGRectGetMidX(ovalRect), CGRectGetMidY(ovalRect)),
            radius: CGRectGetWidth(ovalRect) / 2,
            startAngle: ovalStartAngle,
            endAngle: ovalEndAngle, clockwise: true)
        

        
        // create an object that represents how the curve
        // should be presented on the screen
        let progressLine = CAShapeLayer()
        progressLine.path = ovalPath.CGPath
        progressLine.strokeColor = UIColor.blueColor().CGColor
        progressLine.fillColor = UIColor.clearColor().CGColor
        progressLine.lineWidth = 10.0
        progressLine.lineCap = kCALineCapRound
        progressLine.frame.origin.y = 200
        
        // add the curve to the screen
        self.view.layer.addSublayer(progressLine)
        
        // create a basic animation that animates the value 'strokeEnd'
        // from 0.0 to 1.0 over 3.0 seconds
        let animateStrokeEnd = CABasicAnimation(keyPath: "strokeEnd")
        animateStrokeEnd.duration = 3.0
        animateStrokeEnd.fromValue = 0.0
        animateStrokeEnd.toValue = 1.0
        
        // add the animation
        progressLine.addAnimation(animateStrokeEnd, forKey: "animate stroke end animation")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkBoxPressed(sender: UIButton) {
//        UIAlertView(title: "Pressed", message: "You pressed it", delegate: nil, cancelButtonTitle: nil).show()
        sender.selected = !sender.selected
    }
}

