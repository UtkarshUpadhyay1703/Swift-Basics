//
//  Person+CoreDataProperties.swift
//  OneToOne
//
//  Created by admin on 9/26/23.
//
//

import Foundation
import CoreData
import UIKit

extension Person {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }
    
    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var phones: Phone?
    
}

class PersonModel{
    var email:String?
    var name: String?
    var phones: PhoneModel?
}

class PersonManager : Identifiable {
    let phoneManager = PhoneManager()
    
    private var context: NSManagedObjectContext{
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    func addPerson(person: PersonModel) -> String{
        //Adding new Phone first
        if(!isPersonExist(email: person.email ?? "")){
            let newPhone:PhoneModel = PhoneModel()
            newPhone.companyName = person.phones?.companyName
            newPhone.imeiNumber = person.phones?.imeiNumber ?? "111111111111111"
//            print("imei = \(newPhone.imeiNumber)")
            if (phoneManager.addPhone(phone: newPhone)){
                let newPerson = Person(context: context)
                //Adding new Person first
                newPerson.email = person.email
                newPerson.name = person.name
                newPerson.phones = phoneManager.getPhone(imei: newPhone.imeiNumber ?? "111111111111111")
//                print("imei = \(newPhone.imeiNumber) email = \(newPerson.email)")
                saveContext()
                return "Added Person !!!!"
            }else{
                return "Not saved, phone already Exist !!!!"
            }
        }else{
            return "Person already exists !!!!!!!"
        }
    }
    
        func deletePerson(email:String) -> Bool{
            if (isPersonExist(email: email)){
                let person = getPerson(email: email)
                if(!phoneManager.deletePhone(imei: person.phones?.imeiNumber ?? "111111111111111")) {
                    print("This Person is not having any Phone")
                }else{
                    print("Deleted Phone of this person !!!!!")
                }
                context.delete(person)
                saveContext()
                print("Deleted Person !!!!!")
                return true
            }else{
                print("Not having Person !!!!!!")
            }
            return false
        }
    
    func getAllPersons() -> [Person] {
        var persons:[Person] = []
        do {
            persons = try context.fetch(Person.fetchRequest())
        } catch {
            print("Error in fetching data ERROR: ",error)
        }
        return persons
    }
    
    func getPerson(email: String) -> Person {
        let persons:[Person] = getAllPersons()
        for person in persons {
            if person.email == email {
                return person
            }
        }
        //This code should never be execute
        return Person()
    }
    
    func isPersonExist(email: String) -> Bool {
        let persons:[Person] = getAllPersons()
        for person in persons {
            if person.email == email {
                return true
            }
        }
        return false
    }
    
    func saveContext() {
        do {
            try context.save()
        } catch{
            print("Error occured in saving data ERROR:",error)
        }
    }
}
