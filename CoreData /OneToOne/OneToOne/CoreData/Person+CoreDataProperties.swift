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
    
    func addPerson(person: PersonModel){
        //Adding new Phone first
        let newPhone:PhoneModel = PhoneModel()
        newPhone.companyName = person.phones?.companyName
        newPhone.imeiNumber = person.phones?.imeiNumber ?? "111111111111111"
        if (phoneManager.addPhone(phone: newPhone)){
        let newPerson = Person(context: context)
        //Adding new Person first
        newPerson.email = person.email
        newPerson.name = person.name
        newPerson.phones = phoneManager.getPhone(imei: newPhone.imeiNumber ?? "111111111111111")
        saveContext()
        }else{
            print("Person not saved !!!!")
        }
    }
    
    func deletePerson(person:PersonModel) -> Bool{
        if (getPerson(email: person.email ?? "").email != nil){
            phoneManager.deletePhone(phone: person.phones ?? PhoneModel())
            let newPerson:Person = Person()
            newPerson.name = person.name
            newPerson.email = person.email
            newPerson.phones?.companyName = person.phones?.companyName
            newPerson.phones?.imeiNumber = person.phones?.imeiNumber
        context.delete(newPerson)
        saveContext()
            return true
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
        return Person()
    }
    
    func saveContext() {
        do {
            try context.save()
        } catch{
            print("Error occured in saving data ERROR:",error)
        }
    }
}
