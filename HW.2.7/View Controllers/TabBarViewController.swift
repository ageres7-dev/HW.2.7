//
//  TabBarViewController.swift
//  HW.2.7
//
//  Created by Сергей Долгих on 04.11.2020.
//

import UIKit

class TabBarController: UITabBarController {
    private let contacts = Person.getContacts(from: DataManager())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for currentVC in viewControllers! {
            
            let navigationVC = currentVC as! UINavigationController
            
            switch navigationVC.topViewController {
            case let personsListVC as PersonsListViewController:
                personsListVC.contacts = contacts
            case let detailPersonListVC as DetailPersonListViewController:
                detailPersonListVC.contacts = contacts
            default: break
            }
        }
    }
}

