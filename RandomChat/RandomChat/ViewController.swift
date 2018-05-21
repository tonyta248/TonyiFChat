//
//  ViewController.swift
//  RandomChat
//
//  Created by Trevor on 12/5/18.
//  Copyright © 2018 toantt. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var createUser: UIButton!

    var ref: DatabaseReference!
    
    @IBAction func createUser(_ sender: UIButton) {
        Auth.auth().signInAnonymously() { (user, error) in
            if let error = error {
                print("Sign in failed:", error.localizedDescription)
                return
            }
            else {
                print("Sign in with id:", user!.user.uid)
                let isAnonymous = user!.user.isAnonymous  // true
                let uid = user!.user.uid
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirebaseApp.configure()
        //self.view.backgroundColor = UIColor.gray
        
        // Do any additional setup after loading the view, typically from a nib.
        //saveUserbtn.addTarget(self, action: #selector(saveUser), for: Touchs)
        ref = Database.database().reference(fromURL: "https://randomchat-a2052.firebaseio.com/")
        ref.updateChildValues(["something" : 123]) // example writing data
    
    }

    
    

}

