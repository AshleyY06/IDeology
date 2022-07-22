//
//  checkInQuestions.swift
//  IDeology
//
//  Created by Tanishqa Kuchi on 7/19/22.
//

import UIKit

class checkInQuestions: UIViewController {
    
    @IBOutlet weak var passwordAnswer: UILabel!
    
    @IBOutlet weak var authenticationLabel: UILabel!
    
    @IBOutlet weak var accountsAnswer: UILabel!
    
    @IBOutlet weak var wifiLabel: UILabel!
    
    @IBOutlet weak var updatesEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordAnswer.isHidden = true
        authenticationLabel.isHidden = true
        accountsAnswer.isHidden = true
        wifiLabel.isHidden = true
        updatesEmail.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func passwordYes(_ sender: Any) {
        passwordAnswer.isHidden = false
        passwordAnswer.text = "That’s great! Keeping each of your passwords unique makes it harder for other people to get into your accounts."
    }
    
    @IBAction func noPassword(_ sender: Any) {
        passwordAnswer.isHidden = false
        passwordAnswer.text = "That’s alright! However, it’s a good habit to keep your passwords unique as it will make it harder for other people to get into your accounts. It might be a good idea to start making all your passwords different in the future!"
    }
    
    @IBAction func authenticationYes(_ sender: Any) {
        authenticationLabel.isHidden = false
        authenticationLabel.text = " Keep doing it! Multi-factor authentication makes it harder for hackers to get a hold of your data and passwords."
    }
    
    @IBAction func authenticationNo(_ sender: Any) {
        authenticationLabel.isHidden = false
        authenticationLabel.text = "It’s not too late to start. Multi-factor authentication allows you to provide two or more verification factors to gain access to an account. It’s a core component of maintaining a strong identity online!"
    }
    
    @IBAction func accountsYes(_ sender: Any) {
        accountsAnswer.isHidden = false
        accountsAnswer.text = "That’s a great habit to have! Checking your accounts allows you to easily monitor for identity theft and fraud within the account."
    }
    
    @IBAction func accountsNo(_ sender: Any) {
        accountsAnswer.isHidden = false
        accountsAnswer.text = "It’d be a good idea to start doing so! It is important to check if the information in your accounts is accurate as this can help you monitor for identity theft and fraud in your accounts."
    }
    
    @IBAction func wifiYes(_ sender: Any) {
        wifiLabel.isHidden = false
        wifiLabel.text = "Awesome! Avoiding the use of sensitive information when on public wifi will prevent hackers from being able to access your information."
    }
    
    @IBAction func wifiNo(_ sender: Any) {
        wifiLabel.isHidden = false
        wifiLabel.text = "Uh oh! Hackers can easily steal your information through public wifi and sometimes even gain total access to your device. Try to avoid the use of sensitive information when utilizing public wifi!"
    }
    
    @IBAction func updatesYes(_ sender: Any) {
        updatesEmail.isHidden = false
        updatesEmail.text = "Good job! It is crucial to install security updates to protect your systems from any possible attacks."
    }
    
    @IBAction func updatesNo(_ sender: Any) {
        updatesEmail.isHidden = false
        updatesEmail.text = "That's okay! However, installing software updates is important so that your program will be updated in terms of security loopholes in outdated programs."
    }
    
    @IBAction func backtoDirec(_ sender: Any) {
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
