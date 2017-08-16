//
//  ViewController.swift
//  kitDinamics
//
//  Created by Saul Godoy on 8/16/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var animator: UIDynamicAnimator!
    
    var snapBehaviour: UISnapBehavior!
    
    func userHasTapped(tap:UITapGestureRecognizer){
        let touchPoint = tap.location(in: self.view)
        if snapBehaviour != nil{
            animator.removeBehavior(snapBehaviour)
        }
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 0.3
        animator.addBehavior(snapBehaviour)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        
        // crea dynamics
        animator = UIDynamicAnimator(referenceView: self.view)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

