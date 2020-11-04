//
//  PersonDetailsViewController.swift
//  HW.2.7
//
//  Created by Сергей Долгих on 03.11.2020.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var contactPictUIImageView: UIImageView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.number)"
        emailLabel.text = "Email: \(person.email)"
        contactPictUIImageView.layer.cornerRadius = 15
        contactPictUIImageView.image = UIImage(named: "\(person.lastName)")
        
    }
    
    
}
