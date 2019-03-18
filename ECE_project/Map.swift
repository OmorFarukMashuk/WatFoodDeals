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
    
    @IBOutlet weak var MapOutlet: MKMapView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let annotationLocations = [
        ["title": "Anty's Kitchen", "latitude": 43.4722 , "longitude": 80.5373 ],
        ["title": "", "latitude": 43.4722 , "longitude": 80.73 ]
        
    ]
    
    func createAnnotations (locations: [[String: Any]]) {
        for location in locations  {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D (latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
        }
    }
    
}
