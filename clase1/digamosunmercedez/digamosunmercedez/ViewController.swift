//
//  ViewController.swift
//  digamosunmercedez
//
//  Created by Saul Godoy on 8/14/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var labelMarca: UILabel!
    @IBOutlet weak var labelColor: UILabel!
    
    @IBAction func colorChange(_ sender: Any) {
        if labelColor.text == "Azul" {
            labelColor.text = "Blanco"
        }else{
            labelColor.text = "Azul"
        }
    }
    
    @IBAction func marcaChange(_ sender: Any) {
        labelMarca.text = "Mercedes Benz"
    }
    
    @IBAction func imageChange(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

