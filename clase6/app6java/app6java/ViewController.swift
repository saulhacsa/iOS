//
//  ViewController.swift
//  app6java
//
//  Created by Saul Godoy on 8/19/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let filePath = Bundle.main.url(forResource: "particulas", withExtension: "html");
        let myRequest = URLRequest(url: filePath!);
        myWebView.loadRequest(myRequest);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

