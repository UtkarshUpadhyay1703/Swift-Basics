//
//  ViewController.swift
//  SignUp
//
//  Created by admin on 9/21/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func onSubmitButtonClick(_ sender: Any) {
        guard let name = nameField.text, !name.isEmpty else {
            applyAlert(text: "Enter Name:")
            return
        }
        
        guard let age = ageField.text, !age.isEmpty else {
            applyAlert(text: "Enter Age:")
            return
        }
        
        guard let email = emailField.text, !email.isEmpty else {
            applyAlert(text: "Enter Email:")
            return
        }
        
        guard let password = passwordField.text, !password.isEmpty else {
            applyAlert(text: "Enter Password:")
            return
        }
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let student = Student(context: context)
        student.name = name
        student.age = Int16(age)!
        student.email = email
        student.password = password
        
        do{
            try context.save()
        }catch{
            print("Student Saving Error: \(error)")
        }
        
    }
    
    func applyAlert(text: String){
        let alert = UIAlertController(title: "ALERT!!", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Close Alert", comment: "This Closes Alert"), style: .default, handler: { _ in
            NSLog("OK Alert Occured")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

