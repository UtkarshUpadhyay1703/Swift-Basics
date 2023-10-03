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
        if (isPhoneExist(imei: phone.imeiNumber ?? "")){
            print("This Phone is already Present")
            return false
        } else{
            //            print("imei = \(phone.imeiNumber)")
            let newPhone = Phone(context: context)
            newPhone.companyName = phone.companyName
            newPhone.imeiNumber = phone.imeiNumber ?? "111111111111111"
            //            print("imei = \(newPhone.imeiNumber)")
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
            if phone.imeiNumber == imei {
                return phone
            }
        }
        //This condition will never be happen
        return Phone()
    }
    
    func isPhoneExist(imei: String) -> Bool {
        let phones: [Phone] = getAllPhones()
        for phone in phones {
            if phone.imeiNumber == imei {
                return true
            }
        }
        return false
    }
    
    func deletePhone(imei: String) -> Bool{
        if (isPhoneExist(imei: imei)){
            let phone = getPhone(imei: imei)
            context.delete(phone)
            saveContext()
            print("Deleted Phone !!!!!!")
            return true
        }else{ print("This Phone Number is not Exist !!!!!")
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
