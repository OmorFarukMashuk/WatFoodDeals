//
//  Map.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-10.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//


import UIKit
import MapKit

class Map: UIViewController {
    
    @IBAction func backButton(_ sender: Any) {
        
        if(HomeViewController.GlobalVariable.loginflag == true){
            self.performSegue(withIdentifier: "LtoHSegue", sender: self)
        }
        else{
            self.performSegue(withIdentifier: "LtoGSegue", sender: self)
        }
    }
    
    @IBOutlet weak var MapOutlet: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createAnnotations(locations: annotationLocations)
        zoomLevel(location: locationLatLong)
    }
    let locationLatLong = CLLocation(latitude: 43.471887 , longitude: -80.538690)
    let distanceSpan: CLLocationDistance = 300
    let annotationLocations = [
        ["title": "Aunty's Kitchen", "latitude": 43.472408 , "longitude": -80.537314],
        ["title": "Kabob Hut", "latitude": 43.472020, "longitude": -80.538720],
        ["title": "Shinwa Asian Cuisine", "latitude": 43.472472 , "longitude": -80.537890],
        ["title": "The Alley", "latitude": 43.471889, "longitude": -80.538537],
        ["title": "Mongolian Grill", "latitude": 43.472376, "longitude": -80.539217],
    ]
    func zoomLevel (location: CLLocation) {
        let mapCoordinates = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distanceSpan, longitudinalMeters: distanceSpan)
        
        MapOutlet.setRegion(mapCoordinates, animated: true)
    }
    func createAnnotations (locations: [[String: Any]]) {
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D (latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            
            MapOutlet.addAnnotation(annotations)
        }
    }
}

