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
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell()
        }
        let student = students[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "Name: \(student.name ?? "")"
        content.secondaryText = "Email: \(student.email ?? "")"
        
        cell.contentConfiguration = content
        return cell
    }
}
