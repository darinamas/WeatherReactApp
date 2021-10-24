//
//  ViewController.swift
//  WeatherReactApp
//
//  Created by Darinka on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        CustomNotification.shared.addNotification(name: "ChangeCity")
        CustomNotification.shared.addNotification(name: "ChangeToSpain")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func getWether(_ sender: Any) {
        CustomNotification.shared.notify(name: "ChangeCity")
    }
    
    @IBAction func weathSpainTap(_ sender: Any) {
        CustomNotification.shared.notify(name: "ChangeToSpain")
    }
    
}

let citiesArray = ["Prague", "Paris", "Oslo"]
let tempsArray = ["+2", "+9", "-18"]
