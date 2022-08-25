//
//  ColorViewController.swift
//  ColorChangeApp
//
//  Created by Карина on 24.08.2022.
//

import UIKit


protocol MainViewControllerDelegate {
    func getColor(for: UIColor)
}

class ColorViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? MainViewController else { return }
        mainVC.color = view.backgroundColor
        mainVC.delegate = self
    }
}



extension ColorViewController: MainViewControllerDelegate {
    
    func getColor(for color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
