//
//  ViewController.swift
//  eventsMonitor
//
//  Created by rickmrobin@gmail.com on 05/12/2022.
//  Copyright (c) 2022 rickmrobin@gmail.com. All rights reserved.
//

import UIKit
import CoreLocation

class MainViewController: UIViewController, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startLocationUpdate()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickAction(_ sender: Any) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        // create CLLocation from the coordinates of CLVisit
        let clLocation = CLLocation(latitude: visit.coordinate.latitude, longitude: visit.coordinate.longitude)
        print("visit_lat",visit.coordinate.latitude)
        print("visit_long",visit.coordinate.longitude)
        // Get location description
      }

      func newVisitReceived(_ visit: CLVisit, description: String) {
//        let location = Location(visit: visit, descriptionString: description)

        // Save location to disk
      }
    
    func startLocationUpdate() {
        if !self.hasLocationPermission() {
            self.locationManager.requestAlwaysAuthorization()
        }
        if hasLocationPermission() &&   CLLocationManager.locationServicesEnabled()  {
                   print("before setting delegate")
                   locationManager.delegate = self
                   locationManager.requestWhenInUseAuthorization()
                   print("after setting delegate")
                   locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
                    locationManager.distanceFilter = 30
                   locationManager.startUpdatingLocation()
        }
    }
    
    func hasLocationPermission() -> Bool {
           var hasPermission = false
           if CLLocationManager.locationServicesEnabled() {
               switch CLLocationManager.authorizationStatus() {
               case .notDetermined, .restricted, .denied:
                   hasPermission = false
               case .authorizedAlways, .authorizedWhenInUse:
                   hasPermission = true
               }
           } else {
               hasPermission = false
           }
           
           return hasPermission
       }
}

