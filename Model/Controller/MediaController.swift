//
//  MediaController.swift
//  SecondColorApp
//
//  Created by Zettler, Dylan on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

public class MediaPageController: UIViewController
{
    private var soundPlayer : AVAudioPlayer?
    private var imageCounter: Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSLider: UISlider!
        
        @IBAction func changePicture() -> Void
        {
            switchImage()
    
        }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "gengar")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "Gastly")
        }
        else
        {
            imageFrame.image = UIImage(named: "porygon")
        }
        
        imageCounter += 1
    }
}
