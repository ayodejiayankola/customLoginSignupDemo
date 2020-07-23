//
//  LoginViewController.swift
//  CustomLoginSignupDemo
//
//  Created by Ayodeji Ayankola on 7/22/20.
//  Copyright © 2020 konga. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let email = "ayodeji@gmail.com"
    let password = "1234567!9"
    
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
            setUpElements()
        }
        func setUpElements(){
            
            //hide the error label
            errorLabel.alpha = 0
            
            
            //Style the text field
          
            
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

    @IBAction func loginTapped(_ sender: Any) {
        if email == emailTextField.text! && password == passwordTextField.text!{
//            UserDefaults.standard.set(emailTextField, forKey: "email")
            let VC = storyboard?.instantiateViewController(withIdentifier: "HomeVC")
            navigationController?.pushViewController(VC!, animated: true)
        }else{
            let alert = UIAlertController(title: "alert", message: "email/password incorrect", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
}
