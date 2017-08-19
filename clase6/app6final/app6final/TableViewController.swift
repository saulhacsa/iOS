//
//  TableViewController.swift
//  app6final
//
//  Created by Saul Godoy on 8/19/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
    var managedObjects: [NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedContext = appDelegate!.persistentContainer.viewContext
        
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Lista")
        
        do{
            managedObjects = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print ("No se recuperaron los datos guardados. Error : \(error), \(error.userInfo)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managedObjects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        
        let managedObject = managedObjects[indexPath.row]
        cell.textLabel?.text = managedObject.value(forKey: "palabras") as? String
        
        return cell
    }
    
    @IBAction func agregarPalabras(_ sender: Any) {
        
        let alerta2 = UIAlertController(title: "Agregar", message: "Agrega palabra nueva", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: {
            (action:UIAlertAction) -> Void in
            let textField = alerta2.textFields!.first
            self.guardarPalabra(palabra: textField!.text!)
            self.tableView.reloadData()
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .default)
        {(action: UIAlertAction) -> Void in }
        
        alerta2.addTextField {(UITextField:UITextField) -> Void in}
        
        alerta2.addAction(guardar)
        alerta2.addAction(cancelar)
        
        present(alerta2, animated: true, completion: nil)
        
    }
    
    func guardarPalabra(palabra: String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedeContext = appDelegate!.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Lista", in: managedeContext)!
        
        //  let managedObject = NSManagedObject(entity: entity, insertInto: managedeContext)
        let managedObject = NSManagedObject(entity: entity, insertInto: managedeContext)
        
        managedObject.setValue(palabra, forKeyPath: "palabras")
        
        do{
            try managedeContext.save()
            managedObjects.append(managedObject)
        } catch let error as NSError {
            print ("No se pudo guardar, error: \(error), \(error.userInfo)")
        }
    }


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
