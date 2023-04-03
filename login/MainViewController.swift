//
//  ViewController.swift
//  login
//
//  Created by Русиф on 04.04.2023.
//

import UIKit

final class MainViewController: UIViewController {

    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "Rusif"
    private let password = "Aida"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Sign in tap")
        guard let successVc = segue.destination as? SuccessViewController else { return }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func forgotUserNameTap(_ sender: UIButton) {
        let forgotLoginAlertController = UIAlertController(title: "Oops!", message: "Your name is \(loginTF)", preferredStyle: .alert)
        forgotLoginAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(forgotLoginAlertController, animated: true)
        
    }
    @IBAction func forgotPasswordTap(_ sender: UIAlertAction) {
        let forgotPasswordAlertController = UIAlertController(title: "Oops!", message: "Your password is \(password)", preferredStyle: .alert)
        forgotPasswordAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(forgotPasswordAlertController, animated: true)
    }
    
    @IBAction func signInTapped(_ sender: UIButton) {
        if loginTF.text != user || passwordTF.text != password {
            let forgotPasswordAlertController = UIAlertController(title: "Error!", message: "Login or password was invalid. Try again", preferredStyle: .alert)
            forgotPasswordAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(forgotPasswordAlertController, animated: true)
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
}

