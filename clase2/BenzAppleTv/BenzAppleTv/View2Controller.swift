//
//  View2Controller.swift
//  BenzAppleTv
//
//  Created by Saul Godoy on 8/15/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    
    @IBOutlet weak var imagenV2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagenV2.image = #imageLiteral(resourceName: "splash.jpeg")
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
