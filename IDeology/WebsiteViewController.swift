//
//  WebsiteViewController.swift
//  IDeology
//
//  Created by Tanishqa Kuchi on 7/22/22.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController {
    
    
    @IBOutlet weak var infoLinks: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let googleURL = URL(string: "https://www.occ.gov/topics/consumers-and-communities/consumer-protection/fraud-resources/phishing-attack-prevention.html")
        infoLinks.load(URLRequest(url:googleURL!))
    }
    
    @IBAction func backtoResources(_ sender: Any) {
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
