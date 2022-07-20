//
//  SimulatorEmail.swift
//  IDeology
//
//  Created by Tanishqa Kuchi on 7/19/22.
//TodoTableViewController
// toDos = emails, ToDo = Email, createToDos = createEmail, toDo = email, selectedToDo = selectedEmail

import UIKit

class SimulatorEmail: UITableViewController {
    
    var emails : [Email] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emails = createEmail()


    }
    
    func createEmail() -> [Email] {

      let swift = Email()
      swift.name = "Learn Swift"
      swift.important = true

      let scam = Email()
      scam.name = "Watch Out"
      // important is set to false by default

      return [swift, scam]
    }

    // MARK: - Table view data source

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emails.count
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let email = emails[indexPath.row]
        
        if email.important {
          cell.textLabel?.text = "❗️" + email.name
        } else {
          cell.textLabel?.text = email.name
        }

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let email = emails[indexPath.row]

      performSegue(withIdentifier: "openingEmail", sender: email)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let completeVC = segue.destination as? ActualEmailViewController {
            if let email = sender as? Email {
                completeVC.selectedEmail = email
                completeVC.previousVC = self
            }
        }
    }


}
