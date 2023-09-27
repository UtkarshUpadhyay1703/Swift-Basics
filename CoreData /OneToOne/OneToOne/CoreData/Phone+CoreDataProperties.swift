//
//  Phone+CoreDataProperties.swift
//  OneToOne
//
//  Created by admin on 9/26/23.
//
//

import Foundation
import CoreData
import UIKit


extension Phone {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Phone> {
        return NSFetchRequest<Phone>(entityName: "Phone")
    }
    
    @NSManaged public var companyName: String?
    @NSManaged public var imeiNumber: String?
    
}

class PhoneModel{
    var companyName:String?
    var imeiNumber: String?
}

class PhoneManager : Identifiable {
    
    private var context: NSManagedObjectContext{
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    func addPhone(phone: PhoneModel) -> Bool{
        if (getPhone(imei: phone.imeiNumber ?? "").imeiNumber != nil){
            print("This Phone is already Present")
            return false
        } else{
            let newPhone = Phone(context: context)
            newPhone.companyName = phone.companyName
            newPhone.imeiNumber = phone.imeiNumber ?? "111111111111111"
            saveContext()
            return true
        }
    }
    
    func getAllPhones() -> [Phone] {
        var phones:[Phone] = []
        do {
            phones = try context.fetch(Phone.fetchRequest())
        } catch {
            print("Error occured in fetching data ERROR:", error)
        }
        return phones
    }
    
    func getPhone(imei: String) -> Phone {
        let phones: [Phone] = getAllPhones()
        for phone in phones {
            if phone.imeiNumber == imei { return phone}
        }
        return Phone()
    }
    
    func deletePhone(phone: PhoneModel) -> Bool{
        if (getPhone(imei: phone.imeiNumber ?? "").imeiNumber != nil){
            let newPhone:Phone = Phone()
            newPhone.imeiNumber = phone.imeiNumber
            newPhone.companyName = phone.companyName
            context.delete(newPhone)
            saveContext()
            return true
        }else{ print("Not Exist")
            return false
        }
    }
    

    
    func saveContext() {
        do {
            try context.save()
        } catch{
            print("Error occured in saving data ERROR:",error)
        }
    }
}
