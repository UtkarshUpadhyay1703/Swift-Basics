//
//  ViewController.swift
//  OneToOne
//
//  Created by admin on 9/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var companyField: UITextField!
    @IBOutlet weak var imeiField: UITextField!
    @IBOutlet weak var deleteImeiField: UITextField!
    @IBOutlet weak var deleteEmailField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var personManager = PersonManager()
    var phoneManager = PhoneManager()
    @IBAction func onSave(_ sender: Any) {
        let person = PersonModel()
        person.email = emailField.text
        person.name = nameField.text
        let phone = PhoneModel()
        phone.companyName = companyField.text
        phone.imeiNumber = imeiField.text
        person.phones = phone
        resultLabel.text = personManager.addPerson(person: person)
        nameField.text = ""
        emailField.text = ""
        companyField.text = ""
        imeiField.text = ""
    }

    @IBAction func deletePhone(_ sender: Any) {
        let deletePhoneImei = deleteImeiField.text
        if(deletePhoneImei != nil){
            if(phoneManager.deletePhone(imei: deletePhoneImei ?? "")){
                resultLabel.text = "Deleted Phone !!!!!!"
            }else { resultLabel.text = "Not Deleted Phone !!!!!!" }
        }else{
            resultLabel.text = "Enter IMEI Number"
        }
    }
    @IBAction func deletePerson(_ sender: Any) {
        let deletePersonEmail = deleteEmailField.text
        if(deletePersonEmail != nil){
//            print("deletePersonEmail: \(deletePersonEmail)")
            if(personManager.deletePerson(email: deletePersonEmail ?? "")){
                resultLabel.text = "Deleted Person !!!!!"
            }else { resultLabel.text = "Not Deleted Person !!!!!" }
        }else{
            resultLabel.text = "Please Write Email !!!!!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

