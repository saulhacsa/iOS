//
//  ViewController.swift
//  FadeMusic
//
//  Created by Saul Godoy on 8/16/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var musica: AVAudioPlayer!
    
    @IBAction func playMusic(_ sender: UISwitch) {
        if sender.isOn{
            musica.setVolume(1, fadeDuration: 2)
        }else{
            musica.setVolume(0, fadeDuration: 2)
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let asset = NSDataAsset (name: "11 Liquid State") else { print("Error loading audio");
            return  }
        
        do{
            musica = try AVAudioPlayer(data: asset.data)
        }catch{ print("Error loading initial audio")    }
        
        musica.volume = 0
        musica.numberOfLoops = -1
        musica.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

