//
//  ViewController.swift
//  Creating_an_Account
//
//  Created by Esna nur Yılmaz on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var SurnameTextField: UITextField!
    @IBOutlet weak var MailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = UserDefaults.standard.object(forKey: "Name")
        let surname = UserDefaults.standard.object(forKey: "Surname")
        let mail = UserDefaults.standard.object(forKey: "Mail")
        let password = UserDefaults.standard.object(forKey: "Password")
        
        if let newName = name as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newSurname = surname as? String{
            surnameLabel.text = "Surname: \(newSurname)"
        }
        
        if let newMail = mail as? String{
            mailLabel.text = "Mail: \(newMail)"
        }
        
        if let newPassword = password as? String{
            passwordLabel.text = "Password: \(newPassword)"
        }
    }
    
    @IBAction func SaveClicked(_ sender: Any) {
        UserDefaults.standard.set(NameTextField.text!, forKey: "Name")
        if let nameValue = UserDefaults.standard.string(forKey: "Name"){
            print(nameValue)
        }
        UserDefaults.standard.set(SurnameTextField.text!, forKey: "Surname")
        if let surnameValue = UserDefaults.standard.string(forKey: "Surname"){
            print(surnameValue)
        }
        UserDefaults.standard.set(MailTextField.text!, forKey: "Mail")
        if let mailValue = UserDefaults.standard.string(forKey: "Mail"){
            print(mailValue)
        }
        
        UserDefaults.standard.set(PasswordTextField.text!, forKey: "Password")
        if let passwordValue = UserDefaults.standard.string(forKey: "Password"){
            print(passwordValue)
        }
        nameLabel.text = "Name: \(NameTextField.text!)"
        surnameLabel.text = "Surname: \(SurnameTextField.text!)"
        mailLabel.text = "Mail: \(MailTextField.text!)"
        passwordLabel.text = "Password: \(PasswordTextField.text!)"
    }
    
    @IBAction func DeleteClicked(_ sender: Any) {
        
        let name = UserDefaults.standard.object(forKey: "Name")
        let surname = UserDefaults.standard.object(forKey: "Surname")
        let mail = UserDefaults.standard.object(forKey: "Mail")
        let password = UserDefaults.standard.object(forKey: "Password")
        
        if (name as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name"
        }
        
        if (surname as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "Surname")
            surnameLabel.text = "Surname"
        }
        
        if (mail as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "Mail")
            mailLabel.text = "Mail"
        }
        
        if (password as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "Password")
            passwordLabel.text = "Password"
        }
    }
}
