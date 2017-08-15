//
//  FirstViewController.swift
//  TabBarUniversal
//
//  Created by Saul Godoy on 8/15/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func showAlertV1(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "First View Over...", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
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

