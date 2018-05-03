//
//  Restaurants.swift
//  Final
//
//  Created by user910120 on 5/1/18.
//  Copyright © 2018 user910120. All rights reserved.
//

import UIKit
import MapKit

class Restaurants: NSObject , MKAnnotation {
    
    let restaurauntTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D ) {
        self.restaurauntTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    var subtitle: String? {
        return restaurantType
    }
}
