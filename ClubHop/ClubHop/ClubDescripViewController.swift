//
//  ClubDescripViewController.swift
//  ClubHop
//
//  Created by Snekha Senthilkumar on 1/27/19.
//  Copyright © 2019 Snekha Senthilkumar. All rights reserved.
//

import UIKit

class ClubDescripViewController: UIViewController {

    @IBOutlet weak var clubDescripTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmTapped(_ sender: Any) {
        let clubDescrip = clubDescripTextField.text;
        
        // Check for empty fields
        if((clubDescrip?.isEmpty)!){
            
            // Display alert message
            displayMyAlertMessage(userMessage: "All fields are required.");
            
            return;
        }
        
        // Store Data
        UserDefaults.standard.set(clubDescrip, forKey:"clubDescrip");
        UserDefaults.standard.synchronize();
    }
 
    func displayMyAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle:UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    }
    
}
