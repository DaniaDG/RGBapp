//
//  ViewController.swift
//  RGBapp
//
//  Created by Дания Галаиини on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorImage: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var blueValueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redValueSlider.value)
        colorImage.backgroundColor = getColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenValueSlider.value)
        colorImage.backgroundColor = getColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueValueSlider.value)
        colorImage.backgroundColor = getColor()
    }
    
    private func getColor() -> UIColor {
        let red = CGFloat(redValueSlider.value)
        let green = CGFloat(greenValueSlider.value)
        let blue = CGFloat(blueValueSlider.value)
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}

