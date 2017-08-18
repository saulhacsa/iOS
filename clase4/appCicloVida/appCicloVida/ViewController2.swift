//
//  ViewController2.swift
//  appCicloVida
//
//  Created by Saul Godoy on 8/17/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

import UserNotifications

class ViewController2: UIViewController {

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

        // Do any additional setup after loading the view.
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func loadView() {
        super.loadView()
        print("Se activo la funcion de loadView 2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la funcion de viewWillAppear 2" )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la funcion de viewDidAppear 2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la funcion de viewWillDisappear 2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la funcion de viewDidDisappear 2")
    }

}
