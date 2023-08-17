//
//  DeviceLocationService.swift
//  Getting User Location
//
//  Created by admin on 7/12/23.
//

import Combine
import CoreLocation
import UIKit
class DeviceLocationService: NSObject,CLLocationManagerDelegate,ObservableObject{
    var coordinatesPublisher = PassthroughSubject<CLLocationCoordinate2D, Error>()
    private override init(){
        super.init()
    }
    static let shared = DeviceLocationService()
    private lazy var locationManager:CLLocationManager = {
        let manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        return manager
    }()
    
    func requestLocationUpdates(){
        switch locationManager.authorizationStatus{
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
        default:
            break
//            deniedLocationAccessPublisher.send()
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus{
        case .authorizedWhenInUse, .authorizedAlways:
            manager.startUpdatingLocation()
        default:
            manager.stopUpdatingLocation()
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else{ return }
        coordinatesPublisher.send(location.coordinate)
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        coordinatesPublisher.send(completion: .failure(error))
    }
}
