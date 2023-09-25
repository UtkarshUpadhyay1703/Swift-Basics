//
//  StudentListViewController.swift
//  SignUp
//
//  Created by admin on 9/21/23.
//

import UIKit

class StudentListViewController: UIViewController {
    
    private var students:[Student] = []
    private let manager = DatabaseManager()
    
    @IBOutlet weak var studentTableView: UITableView!
    
    @IBAction func addStudentButtonTab(_ sender: UIBarButtonItem) {
        addUpdateStudentNavigation()
    }
    
    func addUpdateStudentNavigation(student: Student? = nil) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else { return }
        vc.student = student
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        students = manager.fetchStudents()
        studentTableView.reloadData()
    }
    
}

extension StudentListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserCell
        else {
            return UITableViewCell()
        }
        let student = students[indexPath.row]
        cell.student = student
        return cell
        
        //        var content = cell.defaultContentConfiguration()
        //        content.text = "Name: \(student.name ?? "")"
        //        content.secondaryText = "Email: \(student.email ?? "")"
        //
        //        if let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        //            let imageURL = documentDirectory.appendingPathComponent(student.imageName ?? "Image_not_available").appendingPathExtension("png")
        //            content.image = UIImage(contentsOfFile: imageURL.path)
        //
        //            var imageProp = content.imageProperties
        //            imageProp.maximumSize = CGSize(width: 80, height: 80)
        //            content.imageProperties = imageProp
        //        }
        //
        //        cell.contentConfiguration = content
        //        return cell
    }
}

extension StudentListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let update = UIContextualAction(style: .normal, title: "Update") { _, _, _ in
            self.addUpdateStudentNavigation(student: self.students[indexPath.row])
        }
        update.backgroundColor = .systemIndigo
        
        let delete = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            self.manager.deleteStudent(student: self.students[indexPath.row])// delete from database
            self.students.remove(at: indexPath.row)//delete from array
            self.studentTableView.reloadData()// Reload table view
        }
        delete.backgroundColor = .systemRed
        return UISwipeActionsConfiguration(actions: [update, delete])
    }
}
