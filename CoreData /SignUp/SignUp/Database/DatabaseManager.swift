//
//  DatabaseManager.swift
//  SignUp
//
//  Created by admin on 9/21/23.
//

import UIKit
import CoreData
class DatabaseManager {
    
    private var context: NSManagedObjectContext{
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    func addStudent(stud:StudentModel){
        let student = Student(context: context)
        student.name = stud.name
        student.age = stud.age
        student.email = stud.email
        student.password = stud.password
        
        do{
            try context.save()
        }catch{
            print("Student Saving Error: \(error)")
        }
    }
    
    func fetchStudents() -> [Student] {
        var students: [Student] = []
        
        do{
            students = try context.fetch(Student.fetchRequest())
        }catch{
            print("Error in fetching the Students: ",error)
        }
        return students
    }
    
    
}
