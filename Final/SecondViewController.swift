//
//  SecondViewController.swift
//  Final
//
//  Created by user910120 on 5/1/18.
//  Copyright © 2018 user910120. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class SecondViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let intialLocation = CLLocation(latitude: 21.329099, longitude: -158.088889)
    
    let regionRadius = CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = ["Map"]
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = restaurant(title: "Aloha Salads", type: "Local", coordinate: CLLocationCoordinate2D (latitude: 21.3829, longitude: -157.9400))
        let restaurantTwo = restaurant(title: "Dennys", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.3293, longitude: -158.0923))
        let restaurantThree = restaurant(title: "Outback Steakhouse", type: "Australian", coordinate: CLLocationCoordinate2D (latitude: 21.3284, longitude: -158.0869))
        let restaurantFour = restaurant(title: "Panda Express", type: "American Oriental", coordinate: CLLocationCoordinate2D (latitude: 21.3291, longitude: -158.0865))
        let restaurantFive = restaurant(title: "Ramen-Ya", type: "Japanese", coordinate: CLLocationCoordinate2D (latitude: 21.33350, longitude: -158.0900))
        let restaurantSix = restaurant(title: "Wendys", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.3307, longitude: -158.0859))
        
    }
        func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate.regionRadius)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

