//
//  MapViewModel.swift
//  Get User Location on Map App
//
//  Created by admin on 7/13/23.
//

import Foundation
import MapKit

enum mapDetails{
    static let startingLocation = CLLocationCoordinate2D(latitude: 27.4924, longitude: 77.6737)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
}

final class ContentViewModel: NSObject,ObservableObject, CLLocationManagerDelegate{
    
    @Published var region = MKCoordinateRegion(center: mapDetails.startingLocation, span: mapDetails.defaultSpan)
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationSErviceManagerIsEnabled(){
        if CLLocationManager.locationServicesEnabled(){
        locationManager = CLLocationManager()
            locationManager!.delegate = self
        }else{
            print("Your location services is closed please turn on by going to the settings and enabling it")
        }
    }
    
    private func checkLocationAuthrization(){
        guard let locationManager = locationManager else {
            return
        }
        switch locationManager.authorizationStatus{
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted due to parental control")
        case .denied:
            print("You have denied the location permission please allow by going to the settings and enable")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: mapDetails.defaultSpan)
        @unknown default:
            break
        }
}

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthrization()
    }

}

