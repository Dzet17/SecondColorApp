//
//  ViewController.swift
//  FirstSwiftProject
//
//  Created by Zettler, Dylan on 10/6/17.
//  Copyright © 2017 CTEC. All rights reserved.
//
import UIKit

class ViewController: UIViewController
{

    @IBOutlet var firstButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        if (firstButton.backgroundColor == .magenta)
        {
            firstButton.backgroundColor = .cyan
        }
        else
        {
            firstButton.backgroundColor = .magenta
        }
        view.backgroundColor = createRandomColor()
    }
    @IBAction func clickedButton(_ sender: UIButton) {
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double (arc4random_uniform(256))/255/00)
        let blueAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

