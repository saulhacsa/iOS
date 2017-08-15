//
//  ViewController.swift
//  BenzAppleTv
//
//  Created by Saul Godoy on 8/15/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagenV1: UIImageView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var branchLabel: UILabel!
    
    @IBAction func getBranch(_ sender: Any) {
        branchLabel.text = "digamos un mercedes..."
    }
    
    @IBAction func getColor(_ sender: Any) {
        colorLabel.text = "Azul"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            imagenV1.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

