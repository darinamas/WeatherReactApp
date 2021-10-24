//
//  CustomNotification.swift
//  WeatherReactApp
//
//  Created by Darinka on 24.10.2021.
//

import Foundation

class CustomNotification {
    static var shared = CustomNotification()
    
    private var notifications: [String : [(() -> ())]]  = [:]
    
    func addNotification(name: String) {
        notifications[name] = []
    }
    
    func subscribe(name: String, handler: @escaping (() -> ())) {
        notifications[name]?.append(handler)
    }
    
    func notify(name: String) {
        notifications[name]?.forEach({ handler in
            handler()
        })
    }
}
