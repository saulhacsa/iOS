//
//  javaViewController.swift
//  app6final
//
//  Created by Saul Godoy on 8/19/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class javaViewController: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let filePath = Bundle.main.url(forResource: "particulas", withExtension: "html");
        let myRequest = URLRequest(url: filePath!);
        myWebView.loadRequest(myRequest);
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
