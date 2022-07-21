//
//  EmiratesViewController.swift
//  IDeology
//
//  Created by Fernandez Jose on 7/21/22.
//

import UIKit

class EmiratesViewController: UIViewController {

    @IBOutlet weak var warning: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        warning.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func scam(_ sender: Any) {
        warning.isHidden = false
    }
    
    @IBAction func backToInbox(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
