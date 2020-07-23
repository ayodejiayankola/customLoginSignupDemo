//
//  ViewController.swift
//  CustomLoginSignupDemo
//
//  Created by Ayodeji Ayankola on 7/22/20.
//  Copyright © 2020 konga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
            setUpElements()
        }
        func setUpElements(){
            
            
            
            //Style the text field
            
            
            Utilities.styleFilledButton(signUpButton)
            
            Utilities.styleHollowButton(loginButton)
        }
        


}

