//
//  LoginViewController.swift
//  GOChat
//
//  Created by Ricky on 13/08/16.
//  Copyright © 2016 Ricky. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleSignIn
import CoreData
import AudioToolbox

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var anonymousButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //anonymus button - Set border and color
        anonymousButton.layer.borderWidth = 1.0
        anonymousButton.layer.borderColor = UIColor.white.cgColor
        
        GIDSignIn.sharedInstance().clientID = "594369531647-dmnhriqhdh66ahlr6lscm0ii10n72u8a.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().uiDelegate = self
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func loginAnonymus(_ sender: AnyObject) {
        print("Login anonymusly did tapped")
        
        
        
        //switch view by settings navigation controller as root view controlelr
        
        // Create a main storyboard instance
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //From main storyboard instantiate a navigation controller
        let naviVC = storyboard.instantiateViewController(withIdentifier: "NavigationVC") as! UINavigationController
        
        //Get the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // Set Navigation Controller as root view controller
        appDelegate.window?.rootViewController = naviVC
    }

    @IBAction func googleLogin(_ sender: AnyObject) {
        print("google login did tap")
        GIDSignIn.sharedInstance().signIn()
        Helper.helper.logInWithGoogle()
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
