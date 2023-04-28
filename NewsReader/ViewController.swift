//
//  ViewController.swift
//  NewsReader
//
//  Created by Sulthon on 28/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        emailTextLabel.text = "Surel"
        emailTextField.placeholder = "surel@pengguna.com"
        passwordTextLabel.text = "Kata Sandi"
        passwordTextField.placeholder = "Rahasia"
        loginButton.setTitle("Masuk", for: UIControl.State.normal)
        
        
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Email: \(emailTextField.text ?? "-")")
    }
}

