//
//  SignUpViewController.swift
//  CustomLoginSignupDemo
//
//  Created by Ayodeji Ayankola on 7/22/20.
//  Copyright © 2020 konga. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    let firstName = "ayo"
    let lastName = "Deji"
    let email = "ayodeji@gmail.com"
    let password = "1234567!9"
    let defaults = UserDefaults.standard

 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements(){
        
        //hide the error label
        errorLabel.alpha = 0
        
        
        //Style the text field
        Utilities.styleTextField(firstNameTextField)
        
        
        Utilities.styleTextField(lastNameTextField)
        
        Utilities.styleTextField(emailTextField)
        
        Utilities.styleTextField(passwordTextField)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBAction func signupTapped(_ sender: Any) {
                if firstName == firstNameTextField.text! && lastName == lastNameTextField.text! && email == emailTextField.text! && password == passwordTextField.text!{
                    let alert = UIAlertController(title: "alert", message: "signup successful", preferredStyle: .alert)
                        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                        alert.addAction(ok)
                        present(alert, animated: true, completion: nil)
                      }else{
                          let alert = UIAlertController(title: "alert", message: "error signing up user", preferredStyle: .alert)
                          let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                          alert.addAction(ok)
                          present(alert, animated: true, completion: nil)
                      }
                }
    
    
}
