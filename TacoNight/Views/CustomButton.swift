//
//  CustomButton.swift
//  TacoNight
//
//  Created by Robert Manson on 1/15/15.
//  Copyright (c) 2015 Robert Manson. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    override var highlighted: Bool {
        set(newValue) {
            super.highlighted = newValue
            setNeedsDisplay()
        }
        get {
            return super.highlighted
        }
    }
    override var selected: Bool {
        set(newValue) {
            super.selected = newValue
            setNeedsDisplay()
        }
        get {
            return super.selected
        }
    }
    override func sizeThatFits(size: CGSize) -> CGSize {
        var desiredSize: CGSize = CGSize(width: 47.0, height: 47.0)
        desiredSize.height += self.contentEdgeInsets.top + self.contentEdgeInsets.bottom
        desiredSize.width += self.contentEdgeInsets.left + self.contentEdgeInsets.right
        return desiredSize
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        contentMode = UIViewContentMode.Redraw
    }
}
