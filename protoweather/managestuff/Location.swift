//
//  Location.swift
//  protoweather
//
//  Created by Emil Thomas Levin on 10/19/22.
//

import Foundation
import CoreLocation

class Location: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var space: CLLocationCoordinate2D?
    @Published var loadingscreen = false
    
    override init(){
        super.init()
        manager.delegate = self
    }
    
    func requestlocation() {
        loadingscreen = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        space = locations.first?.coordinate
        loadingscreen = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Unable to get location data", error)
        loadingscreen = false
    }
}
