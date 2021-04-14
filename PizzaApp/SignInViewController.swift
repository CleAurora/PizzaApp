//
//  SignInViewController.swift
//  PizzaApp
//
//  Created by Cleís Aurora Pereira on 13/04/21.
//

import UIKit

final class SignInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    lazy var repository: LoginRepositoryProtocol = LoginRepository()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSignInTapped() {
        if let email = emailTextField.text, let password = passwordTextField.text {
            repository.signIn(email: email, password: password) { [weak self] result in
                print(result)
            }
        }
    }
}

