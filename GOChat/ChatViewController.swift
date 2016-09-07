//
//  ChatViewController.swift
//  GOChat
//
//  Created by Ricky on 13/08/16.
//  Copyright © 2016 Ricky. All rights reserved.
//

import UIKit
import CloudKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutDidTapped(_ sender: AnyObject) {
        
        // Create a main storyboard instance
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //From main storyboard instantiate a nView controller
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        
        //Get the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // Set Navigation Controller as root view controller
        appDelegate.window?.rootViewController = loginVC

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
