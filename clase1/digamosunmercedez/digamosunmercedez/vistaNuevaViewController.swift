//
//  vistaNuevaViewController.swift
//  digamosunmercedez
//
//  Created by Saul Godoy on 8/14/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit
import GoogleMaps

class vistaNuevaViewController: UIViewController {

    @IBOutlet weak var labelNuevaVista: UILabel!
    
    @IBAction func testVista(_ sender: Any) {
        labelNuevaVista.text = "Código nuevo"
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
