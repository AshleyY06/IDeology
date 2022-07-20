//
//  ActualEmailViewController.swift
//  IDeology
//
//  Created by scholar on 7/20/22.
// CompleteToDoViewController
// titleLabel = emailLabel
// moveToComplete (segue)= openingEmail

import UIKit

class ActualEmailViewController: UIViewController {

    var previousVC = SimulatorEmail()
    var selectedEmail = Email()
    
    @IBOutlet weak var emailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = selectedEmail.name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
