//
//  DetailPersonListViewController.swift
//  HW.2.7
//
//  Created by Сергей Долгих on 04.11.2020.
//

import UIKit

class DetailPersonListViewController: UITableViewController {
    
    var contacts: [Person]!
    
    // MARK: - Header In Section
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //Use a content configuration to manage the cell’s text instead. Use defaultContentConfiguration() to get a default list content configuration, set your primary text to the text property of the configuration, and apply the configuration by setting it to the contentConfiguration property of the cell.
        
        let header = UITableViewHeaderFooterView()
        
        var confHeader = header.defaultContentConfiguration()
        confHeader.text = contacts[section].fullName
        confHeader.textProperties.color = .brown
        confHeader.textProperties.font = UIFont(name: "Futura-MediumItalic",
                                                size: 30)!
       
        confHeader.image = UIImage(named: "\(contacts[section].lastName)")
        confHeader.imageProperties.cornerRadius = 15
        confHeader.imageProperties.reservedLayoutSize = CGSize(width: 40, height: 40)
        confHeader.imageProperties.maximumSize = CGSize(width: 40, height: 40)

        header.contentConfiguration = confHeader
        header.contentView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    // MARK: - Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let person = contacts[indexPath.section]
        
        cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        cell.textLabel?.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.number
            cell.imageView?.image = UIImage.init(systemName: "phone")
        case 1:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage.init(systemName: "tray")
        default: break
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
