//
//  ColorTools.swift
//  SecondColorApp
//
//  Created by Zettler, Dylan on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class ColorTools
{
    public func createRandomColor() -> UIColor
    {
        let redValue = CGFloat (Double(arc4random_uniform(256)) / 255.00 )
        let blueValue = CGFloat (drand48())
        let greenValue = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        let newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
   
        return newColor
    }
}
