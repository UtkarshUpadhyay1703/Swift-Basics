//
//  ViewController.swift
//  try new
//
//  Created by admin on 7/11/23.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//}

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("location manager")
        if let location = locations.first {
            // Print the latitude and longitude to the console
            print("Latitude: \(location.coordinate.latitude), Longitude: \(location.coordinate.longitude)")
        }
    }
    
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        // Handle location errors
//        print("Location error: \(error.localizedDescription)")
//    }
//}

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        if let clError = error as? CLError {
            if clError.code == .denied {
                // Location access denied by the user
                // Show an alert or guide the user to enable location services
            } else if clError.code == .restricted {
                // Location access restricted on this device
                // Show an alert or guide the user to enable location services
            }
        }
        print("Location error: \(error.localizedDescription)")
    }
