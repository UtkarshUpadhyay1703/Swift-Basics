//
//  ViewController.swift
//  SignUp
//
//  Created by admin on 9/21/23.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {
    
    let databaseManager = DatabaseManager()
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    private var isImageSelectedByStudent: Bool = false
    
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
        
        if !isImageSelectedByStudent {
            applyAlert(text: "Please Choose your Profile Image!!!")
            return
        }
        print("All validations are done....")
        
        let imageName = UUID().uuidString
        let student = StudentModel(name: name, age: Int16(age)!, email: email, password: password, imageName: imageName)
        saveImageToDocumentDirectory(imageName: imageName)
        databaseManager.addStudent(stud: student)
        navigationController?.popViewController(animated: true)
        //        applyAlert(text: "User Added!!!!")
    }
    
    func saveImageToDocumentDirectory(imageName: String){
        
        if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let fileURL = documentsDirectory.appendingPathComponent(imageName).appendingPathExtension("png")
            if let data = profileImageView.image?.pngData(){
                do{
                    try data.write(to: fileURL)
                }catch{
                    print("Error in Saving the Profile Photo: ", error)
                }
            }
        } else {
            print("Documents Directory not found")
        }
        
    }
    
    func applyAlert(text: String){
        let alert = UIAlertController(title: "ALERT!!", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Close Alert", comment: "This Closes Alert"), style: .default, handler: { _ in
            NSLog("OK Alert Occured")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func openGalary() {
        var config = PHPickerConfiguration()
        config.selectionLimit = 1 //0-For Unlimited
        
        let pickerVC = PHPickerViewController(configuration: config)
        pickerVC.delegate = self
        present(pickerVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configuration()
    }
    
    func configuration() {
        uiConfiguration()
        addGesture()
    }
    
    func uiConfiguration(){
        navigationItem.title = "ADD STUDENT"
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height / 2
    }
    
    func addGesture() {
        let imageTab = UITapGestureRecognizer(target: self, action: #selector(ViewController.openGalary))
        profileImageView.addGestureRecognizer(imageTab)
    }
}

extension ViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        for result in results {
            //This will run on Background thread
            result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                guard let image = image as? UIImage else { return }
                //This will run on Main thread because it will update UI
                DispatchQueue.main.async {
                    self.profileImageView.image = image
                    self.isImageSelectedByStudent = true
                }
            }
        }
    }
}

