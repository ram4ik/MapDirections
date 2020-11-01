//
//  MainController.swift
//  MapDirections
//
//  Created by Ramill Ibragimov on 01.11.2020.
//

import UIKit
import MapKit
import LBTATools

class MainController: UIViewController {
    
    let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(mapView)
        mapView.fillSuperview()
        
        mapView.mapType = .hybridFlyover
    }
}
