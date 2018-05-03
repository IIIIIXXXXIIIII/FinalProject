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
    
    let regionRadius : CLLocationDistance = (1000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: intialLocation)
        
        let restaurantOne = Restaurants(title: "Aloha Salads", type: "Local", coordinate: CLLocationCoordinate2D (latitude: 21.331378, longitude: -158.091572))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurants(title: "Dennys", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.329315, longitude: -158.092312))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurants(title: "Outback Steakhouse", type: "Australian", coordinate: CLLocationCoordinate2D (latitude: 21.328439, longitude: -158.0869))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurants(title: "Panda Express", type: "American Oriental", coordinate: CLLocationCoordinate2D (latitude: 21.329534, longitude: -158.086524))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurants(title: "Ramen-Ya", type: "Japanese", coordinate: CLLocationCoordinate2D (latitude: 21.330541, longitude: -158.090069))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurants(title: "Wendys", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.330757, longitude: -158.085741))
        mapView.addAnnotation(restaurantSix)
    }
        func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

