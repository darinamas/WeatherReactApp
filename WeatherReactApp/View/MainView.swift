//
//  View.swift
//  WeatherReactApp
//
//  Created by Darinka on 24.10.2021.
//

import UIKit

class MainView: UIView {

    var cityLabel: UILabel!
    var tempLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setSubscription()
        setLabels()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setSubscription()
        setLabels()
    }
    
    func setSubscription() {
                CustomNotification.shared.subscribe(name: "ChangeCity") { [self] in
                    cityLabel.text = citiesArray.randomElement()
                    tempLabel.text = tempsArray.randomElement()
                    self.backgroundColor = .white
                }
        
        CustomNotification.shared.subscribe(name: "ChangeToSpain") { [self] in
            cityLabel.text = "Spain"
            tempLabel.text = "+40"
            self.backgroundColor = .red
        }
        
        
    }
    
    func setLabels() {
        cityLabel = UILabel()
        cityLabel.frame = CGRect(x: 10, y: 10, width: 200, height: 40)
        self.addSubview(cityLabel)
        
        tempLabel = UILabel()
        tempLabel.frame = CGRect(x: 10, y: 80, width: 200, height: 40)
        self.addSubview(tempLabel)
    }

    
}
