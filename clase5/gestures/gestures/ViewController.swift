//
//  ViewController.swift
//  gestures
//
//  Created by Saul Godoy on 8/18/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hidekeyboard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension UIViewController{
    
        func hidekeyboard(){
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
        }

        func dismissKeyboard(){
            view.endEditing(true)
        }
        
}


