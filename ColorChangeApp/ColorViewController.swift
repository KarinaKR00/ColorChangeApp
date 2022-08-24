//
//  ColorViewController.swift
//  ColorChangeApp
//
//  Created by Карина on 24.08.2022.
//

import UIKit


class ColorViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var delegate: ColorViewControllerDelegate!
   
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard var colorView = segue.destination as? ColorViewController else { return }
        colorView.view.backgroundColor = colorChange.backgroundColor
    }
    

}
