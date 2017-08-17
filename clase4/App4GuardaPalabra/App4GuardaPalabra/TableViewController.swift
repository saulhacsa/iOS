//
//  TableViewController.swift
//  App4GuardaPalabra
//
//  Created by Saul Godoy on 8/17/17.
//  Copyright © 2017 HACSA. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var palabrastabla:[String] = ["Lunes","Mazda","Sega"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return palabrastabla.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        // Configure the cell...

        cell.textLabel?.text = palabrastabla[indexPath.row]
        
        return cell
    }
 
    @IBAction func agregarPalabras(_ sender: Any) {
        let alerta = UIAlertController(title: "Agregar", message: "Agrega palabra nueva", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: {
            (action:UIAlertAction) -> Void in
            let textField = alerta.textFields!.first
            self.palabrastabla.append(textField!.text!)
            self.tableView.reloadData()
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .default)
        {(action: UIAlertAction) -> Void in }
    
        alerta.addTextField {(UITextField:UITextField) -> Void in}
        
        alerta.addAction(guardar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
    
    }

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
