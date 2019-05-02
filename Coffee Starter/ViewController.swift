//
//  ViewController.swift
//  Coffee Starter
//
//  Created by Michael Rockhold on 5/1/19.
//  Copyright © 2019 Michael Rockhold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var coffeeStarter: CoffeeStarter? = nil
    @IBOutlet weak var coffeeStarterButton: UIButton!

    @IBAction func startTouched(_ sender: Any) {
        
        coffeeStarterButton.isEnabled = false
        
        coffeeStarter?.start()
        
        let alert = UIAlertController(title: "Starting Coffee Maker",
                                      message: "Check on the coffee in a few minutes!",
                                      preferredStyle: .alert)
        
        present(alert, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                self.coffeeStarterButton.isEnabled = true
                alert.dismiss(animated: true, completion: nil)
            }
        }
    }
}

