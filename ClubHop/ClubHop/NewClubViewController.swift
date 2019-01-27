//
//  NewClubViewController.swift
//  ClubHop
//
//  Created by Snekha Senthilkumar on 1/27/19.
//  Copyright © 2019 Snekha Senthilkumar. All rights reserved.
//


import UIKit

class NewClubViewController: UIViewController {
    @IBOutlet weak var clubNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var adminEmailOneTextField: UITextField!
    @IBOutlet weak var adminEmailTwoTextField: UITextField!
    @IBOutlet weak var adminEmailThreeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        let clubName = clubNameTextField.text;
        let school = schoolTextField.text;
        let adminEmailOne = adminEmailOneTextField.text;
        let adminEmailTwo = adminEmailTwoTextField.text;
        let adminEmailThree = adminEmailThreeTextField.text;
        
        
        // Check for empty fields
        if((clubName?.isEmpty)! || (school?.isEmpty)! || (adminEmailOne?.isEmpty)! || (adminEmailTwo?.isEmpty)! || (adminEmailThree?.isEmpty)!){
            
            // Display alert message
            displayMyAlertMessage(userMessage: "All fields are required.");
            
            return;
        }
        
        // Store Data
        UserDefaults.standard.set(clubName, forKey:"clubName");
        UserDefaults.standard.set(school, forKey:"school");
        UserDefaults.standard.set(adminEmailOne, forKey:"adminEmailOne");
        UserDefaults.standard.set(adminEmailTwo, forKey:"adminEmailTwo");
        UserDefaults.standard.set(adminEmailThree, forKey:"adminEmailThree");
        UserDefaults.standard.synchronize();
    }
    
    func displayMyAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle:UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    }
    
    
}
