//
//  UserCell.swift
//  SignUp
//
//  Created by admin on 9/25/23.
//

import UIKit

class UserCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var student: Student? {
        didSet{//Property Observer: It will call this method when this variable is set
            userConfiguration()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height / 2
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func userConfiguration() {
        guard let student = student else {
            return
        }
        nameLabel.text = "Name: \(student.name ?? "")"
        emailLabel.text = "Email: \(student.email ?? "")"
        
        if let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let imageURL = documentDirectory.appendingPathComponent(student.imageName ?? "Image_not_available").appendingPathExtension("png")
            profileImageView.image = UIImage(contentsOfFile: imageURL.path)
        }
    }
}
