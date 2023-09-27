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
    
    var personManager = PersonManager()
    @IBAction func onSave(_ sender: Any) {
        let person = PersonModel()
        person.email = emailField.text
        person.name = nameField.text
        let phone = PhoneModel()
        phone.companyName = companyField.text
        phone.imeiNumber = imeiField.text
        person.phones = phone
        personManager.addPerson(person: person)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

