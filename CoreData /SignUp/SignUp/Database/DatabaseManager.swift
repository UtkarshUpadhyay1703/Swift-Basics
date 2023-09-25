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
        addUpdateStudent(stud: stud, student: student)
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
    
    func updateStudent(stud: StudentModel, student: Student){
        addUpdateStudent(stud: stud, student: student)
        saveContext()
    }
    
    func addUpdateStudent(stud: StudentModel, student: Student) {
        student.name = stud.name
        student.age = stud.age
        student.email = stud.email
        student.password = stud.password
        student.imageName = stud.imageName
        saveContext()
    }
    
    func saveContext() {
        do{
            try context.save()
        }catch{
            print("Student saving error: ", error)
        }
    }
    
    func deleteStudent(student: Student){
        
        if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let fileURL = documentsDirectory.appendingPathComponent(student.imageName ?? "Image_not_available").appendingPathExtension("png")
            do{
                try FileManager.default.removeItem(at: fileURL)
            }catch{
                print("Remove image from Document Directory",error)
            }
        }
        
        context.delete(student)
        saveContext()
    }
}
