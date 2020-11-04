//
//  TabBarViewController.swift
//  HW.2.7
//
//  Created by Сергей Долгих on 04.11.2020.
//

import UIKit

class TabBarController: UITabBarController {
    var contacts: [Person] = [] //Person.getContacts(from: DataManager())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = Person.getContacts(from: DataManager())
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       print("Переход по сигвею")
        guard
        let tabBarController = segue.destination
                as? UITabBarController
        else { return }
    
      
        
         
        let personsListVC = tabBarController.viewControllers?.last as!  DetailPersonListViewController
        personsListVC.contacts = contacts

        let detailPersonListVC = tabBarController.viewControllers?.first as! PersonsListViewController
        detailPersonListVC.contacts = contacts
        
        
//        for currentVC in  {
//            switch currentVC {
//            case let personsListVC as! PersonsListViewController:
//                print("")
//            case let detailPersonListVC as! DetailPersonListViewController:
//                print("")
//            default: break
//            }
//        }
    
    
    }

}
    
