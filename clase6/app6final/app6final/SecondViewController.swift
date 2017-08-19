//
//  SecondViewController.swift
//  app6final
//
//  Created by Saul Godoy on 8/19/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit
import UserNotifications

class SecondViewController: UIViewController {
    
    @IBAction func enviarNotificacion(_ sender: AnyObject) {
        
        print ("inicio de notificacion")
        
        let contenido = UNMutableNotificationContent()
        contenido.title = "Notificación"
        contenido.subtitle = "de Caliente"
        contenido.body = "Notificaciones"
        
        let imagenLogo = "hulk"
        
        guard let imageURL = Bundle.main.url(forResource: imagenLogo, withExtension: "png") else {return}
        
        let attachment = try! UNNotificationAttachment(identifier: imagenLogo, url: imageURL, options: .none)
        
        contenido.attachments = [attachment]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        let request = UNNotificationRequest(identifier: "notification.id.01", content: contenido, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        print ("envio completado....")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]){
            (success, error) in
            if success{
                print("aceptado")
            }else{
                print("rechazado")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

