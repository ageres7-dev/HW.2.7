//
//  PersonsListViewController.swift
//  HW.2.7
//
//  Created by Сергей Долгих on 03.11.2020.
//

import UIKit

class PersonsListViewController: UITableViewController{
    var contacts: [Person]!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailsVC = segue.destination as! PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDetailsVC.person = contacts[indexPath.row]
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let person = contacts[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        let selectedColor = UIView()
        selectedColor.backgroundColor = .systemRed
        cell.selectedBackgroundView = selectedColor
        
        return cell
    }
}

