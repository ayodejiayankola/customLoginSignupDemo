//
//  HomeViewController.swift
//  CustomLoginSignupDemo
//
//  Created by Ayodeji Ayankola on 7/22/20.
//  Copyright © 2020 konga. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

   
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "logged in"
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "email")

        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
            let navVc = UINavigationController(rootViewController: vc!)
            let share = UIApplication.shared.delegate as? AppDelegate
            share?.window?.rootViewController = navVc
            share?.window?.makeKeyAndVisible()    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
