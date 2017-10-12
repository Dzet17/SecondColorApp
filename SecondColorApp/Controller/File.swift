//
//  File.swift
//  SecondColorApp
//
//  Created by Zettler, Dylan on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondScreenController :UIViewController
{
    lazy var colorTool = colorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createColor()
    }
}
