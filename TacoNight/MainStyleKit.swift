//
//  MainStyleKit.swift
//  TacoNight
//
//  Created by Robert Manson on 1/15/15.
//  Copyright (c) 2015 Benny. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class MainStyleKit : NSObject {

    //// Drawing Methods

    public class func drawCheckmark(#frame: CGRect, checkmarkColor: UIColor, checkmarkBoxColor: UIColor, selected: Bool, highlighted: Bool) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRectMake(frame.minX + 4, frame.minY + 4, 60, 60))
        checkmarkBoxColor.setStroke()
        rectanglePath.lineWidth = 6
        rectanglePath.stroke()


        if (highlighted) {
            //// Highlight Rect Drawing
            let highlightRectPath = UIBezierPath(rect: CGRectMake(frame.minX + 4, frame.minY + 4, 60, 60))
            UIColor.grayColor().setFill()
            highlightRectPath.fill()
        }


        if (selected) {
            //// Bezier 2 Drawing
            CGContextSaveGState(context)
            CGContextTranslateCTM(context, frame.minX + 0.51471 * frame.width, frame.minY + 0.51471 * frame.height)

            var bezier2Path = UIBezierPath()
            bezier2Path.moveToPoint(CGPointMake(14.88, -10.53))
            bezier2Path.addLineToPoint(CGPointMake(-3.72, 14.83))
            bezier2Path.addCurveToPoint(CGPointMake(-4.32, 14.83), controlPoint1: CGPointMake(-3.89, 15.06), controlPoint2: CGPointMake(-4.15, 15.06))
            bezier2Path.addLineToPoint(CGPointMake(-14.88, 0.43))
            bezier2Path.addCurveToPoint(CGPointMake(-14.88, -0.37), controlPoint1: CGPointMake(-15.04, 0.21), controlPoint2: CGPointMake(-15.04, -0.15))
            bezier2Path.addLineToPoint(CGPointMake(-12.31, -3.87))
            bezier2Path.addCurveToPoint(CGPointMake(-11.72, -3.87), controlPoint1: CGPointMake(-12.15, -4.1), controlPoint2: CGPointMake(-11.88, -4.1))
            bezier2Path.addLineToPoint(CGPointMake(-4.02, 6.62))
            bezier2Path.addLineToPoint(CGPointMake(11.72, -14.83))
            bezier2Path.addCurveToPoint(CGPointMake(12.31, -14.83), controlPoint1: CGPointMake(11.88, -15.06), controlPoint2: CGPointMake(12.15, -15.06))
            bezier2Path.addLineToPoint(CGPointMake(14.88, -11.33))
            bezier2Path.addCurveToPoint(CGPointMake(14.88, -10.53), controlPoint1: CGPointMake(15.04, -11.11), controlPoint2: CGPointMake(15.04, -10.75))
            bezier2Path.closePath()
            bezier2Path.miterLimit = 4;

            checkmarkColor.setFill()
            bezier2Path.fill()

            CGContextRestoreGState(context)
        }
    }

}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}
