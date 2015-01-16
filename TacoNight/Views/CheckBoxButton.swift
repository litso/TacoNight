//
//  CheckBoxButton.swift
//  TacoNight
//
//  Created by Robert Manson on 1/15/15.
//  Copyright (c) 2015 Robert Manson. All rights reserved.
//

import UIKit

class CheckBoxButton: CustomButton {
    override func drawRect(rect: CGRect) {
        let blackColor = UIColor.blackColor()
        MainStyleKit.drawCheckmark(frame: rect, checkmarkColor: blackColor, checkmarkBoxColor: blackColor, selected: self.selected, highlighted: self.highlighted)
    }
}
