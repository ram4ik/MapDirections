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
        
        //mapView.mapType = .hybridFlyover
        setupRegionForMap()
    }
    
    fileprivate func setupRegionForMap() {
        let centerCoordinate = CLLocationCoordinate2DMake(37.7666, -122.427290)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: centerCoordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
}

import SwiftUI

struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView()
            .edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> MainController {
            return MainController()
        }
        
        func updateUIViewController(_ uiViewController: MainController, context: Context) {
            
        }
        
        typealias UIViewControllerType = MainController
        
        
    }
}
