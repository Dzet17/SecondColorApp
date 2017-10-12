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
    lazy var colorTool : ColorTools = colorTools()
    
    
    
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        view.backgroundColor = colorTool.createColor()
        firstButton.setTitleColor(colorTool.ceateColor(), for: .normal)
        firstButton.backgroundColor = colorTool.createColor()
        
        if (firstButton.backgroundColor == .orange)
        {
            firstButton.backgroundColor = .green
        }
        else
        {
            firstButton.backgroundColor = .orange
        }
        view.backgroundColor = createRandomColor()
        firstButton.setTitleColor(createRandomColor(), for: .normal)
        firstButton.backgroundColor = createRandomColor()
    }
    
    
    @IBOutlet weak var STOutlet: UIStepper!
    
    @IBAction func STAction(_ sender: Any)
    {
        if (firstButton.size = 15,
        {
                firstButton.title = "Keep on Clicking me"
        }
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
