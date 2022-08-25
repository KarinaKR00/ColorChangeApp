//
//  ViewController.swift
//  ColorChangeApp
//
//  Created by Карина on 24.08.2022.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Outlet
    
    @IBOutlet var colorChange: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    
    var color: UIColor!
    
    var delegate: MainViewControllerDelegate!
    
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorChange.layer.cornerRadius = 15
        colorChange.backgroundColor = color
        changeColor()
        setValue(for: redLabel, greenLabel, blueLabel )
        setValueTF()
       
    }
    
// MARK: - Action
    
    @IBAction func actionSlider(_ sender:UISlider) {
       changeColor()
        
        switch sender {
        case redSlider: setValue(for: redLabel)
        case greenSlider: setValue(for: greenLabel)
        default: setValue(for: blueLabel)
        }
        
      setValueTF()
    }
    
    @IBAction func doneAction(_ sender: Any) {
        delegate.getColor(for: colorChange.backgroundColor ?? .green)
        dismiss(animated: true)
    }
    
   
    
    // MARK: - Private Method
    
    private func changeColor() {
        colorChange.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        for label in labels  {
            switch label {
            case redLabel:
                label.text = String(format: "%.2f", redSlider.value)
            case greenLabel:
                label.text = String(format: "%.2f", greenSlider.value)
            default:
                label.text = String(format: "%.2f", blueSlider.value)
            }
        }
    }
  
    private func setValueTF() {
        redTextField.text = redLabel.text
        blueTextField.text = blueLabel.text
        greenTextField.text = greenLabel.text
    }
    

}
