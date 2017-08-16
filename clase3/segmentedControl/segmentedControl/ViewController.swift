//
//  ViewController.swift
//  segmentedControl
//
//  Created by Saul Godoy on 8/16/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ctlChange: UISegmentedControl!
    
    @IBOutlet weak var labelChange: UILabel!
    
    @IBAction func btnChange(_ sender: UISegmentedControl) {
        
        switch ctlChange.selectedSegmentIndex {
        case 0:
            labelChange.text = "First selected"
        case 1:
            labelChange.text = "Second selected"
        default:
            break
        }
        
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

