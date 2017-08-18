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
    
    @IBOutlet weak var textField: UITextField!
    
    var palabra: String?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // modificamos el info.plist para poder utilizar http en lugar de https...
       
         let wiki = URL(string: "https://www.wikipedia.org")
        
        webView.loadRequest(URLRequest(url: wiki!))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buscar(_ sender: Any){
        
        palabra = textField.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!)"
        let objetoUrl = URL(string: urlCompleto)
        
        print(urlCompleto)
        
        let tarea = URLSession.shared.dataTask(with:objetoUrl!) {(datos, respuesta, error) in
            if error != nil{
                print(error!)
            }else{
                do{
//print(datos)
                    
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    print(json)
                    
                    let querySubJson = json["query"] as! [String:Any]
                    
                    let pageSubJson = querySubJson["pages"] as! [String:Any]
                    
                  //  let idSubJson = pageSubJson["23597"] as! [String:Any]  // pageid
                    let idSubJson = pageSubJson.first?.value as! [String:Any]  // pageid
                    
                    
                    let extractStringHtml = idSubJson["extract"] as! String
                    
                    print(extractStringHtml)
                    
                    DispatchQueue.main.sync(execute: {
                        self.webView.loadHTMLString(extractStringHtml, baseURL: nil)
                    })
                    
                    
                } catch{
                    print ("El procesamiento del JSON tuvo un error")
                    
                }
            }
            
        }
        
        tarea.resume()
    }

}

