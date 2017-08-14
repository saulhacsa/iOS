//
//  ViewController.swift
//  calculadora
//
//  Created by Saul Godoy on 8/14/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    
    @IBAction func suma(_ sender: Any) {
        let tf1Int: Float? = Float(num1.text!)
        let tf2Int: Float? = Float(num2.text!)
        let convert = tf1Int! + tf2Int!
        let convertText = String(convert)
        result.text = convertText
    }
    
    @IBAction func resta(_ sender: Any) {
        let tf1Int: Float? = Float(num1.text!)
        let tf2Int: Float? = Float(num2.text!)
        let convert = tf1Int! - tf2Int!
        let convertText = String(convert)
        result.text = convertText
    }
    
    
    @IBAction func mult(_ sender: Any) {
        let tf1Int: Float? = Float(num1.text!)
        let tf2Int: Float? = Float(num2.text!)
        let convert = tf1Int! * tf2Int!
        let convertText = String(convert)
        result.text = convertText
    }
    
    
    @IBAction func div(_ sender: Any) {
        let tf1Int: Float? = Float(num1.text!)
        let tf2Int: Float? = Float(num2.text!)
        let convert = tf1Int! / tf2Int!
        let convertText = String(convert)
        result.text = convertText
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

