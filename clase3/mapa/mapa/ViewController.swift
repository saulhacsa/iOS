//
//  ViewController.swift
//  mapa
//
//  Created by Saul Godoy on 8/16/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2D(latitude: 32.5271415, longitude: -117.0215066)
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Zona Rio"
        annotation.subtitle = "Tijuana"
        mapView.addAnnotation(annotation)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

