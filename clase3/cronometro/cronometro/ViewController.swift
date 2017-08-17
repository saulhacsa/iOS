//
//  ViewController.swift
//  cronometro
//
//  Created by Saul Godoy on 8/16/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var numLabel: UILabel!
    
    @IBOutlet weak var startButon: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    @IBAction func startTimer(_ sender: AnyObject) {
        
        if (isPlaying){
            return
        }
        startButon.isEnabled = false
        stopButton.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
        
    }
    
    @IBAction func stopTimer(_ sender: AnyObject) {
        startButon.isEnabled = true
        stopButton.isEnabled = false
        timer.invalidate()
        isPlaying = false
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        
        startButon.isEnabled = true
        stopButton.isEnabled = false
        timer.invalidate()
        counter = 0.0
        numLabel.text = String(counter)
        
    }
    
    func UpdateTimer(){
        counter = counter + 0.1
        numLabel.text = String(format: "%.1f", counter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        numLabel.text = String(counter)
        stopButton.isEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

