//
//  ViewController.swift
//  app5webView
//
//  Created by Saul Godoy on 8/18/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // modificamos el info.plist para poder utilizar http en lugar de https...
        let google = URL(string: "https://www.google.com")
        
        webView.loadRequest(URLRequest(url: google!))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

