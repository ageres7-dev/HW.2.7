//
//  Person.swift
//  HW.2.7
//
//  Created by Сергей Долгих on 03.11.2020.
//

//import Foundation

struct Person {
    
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    let email: String
    let number: String
    
}

extension Person {
    /*
    static func getContacts(from data: DataManager) -> [Person] {
        var result: [Person] = []
        
        var names = data.names
        var surnames = data.surnames
        var numbers = data.numbers
        var emails = data.emails
        
        guard let count = [names.count, surnames.count, numbers.count, emails.count].min() else {return [] }
        
        
        for _ in 1...count {
            let name = names.remove(at: Int.random(in: 0...names.count - 1))
            let surname = surnames.remove(at: Int.random(in: 0...surnames.count - 1))
            let number = numbers.remove(at: Int.random(in: 0...numbers.count - 1))
            let email = emails.remove(at: Int.random(in: 0...emails.count - 1))
            
            let contact = Person(firstName: name,
                                 lastName: surname,
                                 email: email,
                                 number: number)
            result.append(contact)
        }
        
        return result
    }
    */
    static func getContacts(from data: DataManager) -> [Person] {
        var result: [Person] = []
        
        var names = Set(data.names)
        var surnames = Set(data.surnames)
        var numbers = Set(data.numbers)
        var emails = Set(data.emails)
        
        let count = [names.count, surnames.count,
                     numbers.count,emails.count].min() ?? 0
        
        guard count != 0 else { return [] }
        
        for _ in 1...count {
            let name = names.removeFirst()
            let surname = surnames.removeFirst()
            let number = numbers.removeFirst()
            let email = emails.removeFirst()
            
            let contact = Person(firstName: name, lastName: surname,
                                 email: email, number: number)
            
            result.append(contact)
        }
        return result
    }
    
}

class DataManager {
    let names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven"
    ]
    
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins"]
    
    let emails = [
        "сat@zootopia.com",
        "kitten@zootopia.com",
        "dog@zootopia.com",
        "puppy@zootopia.com",
        "hamster@zootopia.com",
        "parrot@zootopia.com",
        "guinea_pig@zootopia.com"
    ]
    let numbers = [
        "+1 (202) 986-1805",
        "+1 (307) 123-2212",
        "+1 (401) 432-3042",
        "+1 (256) 403-2394",
        "+1 (215) 032-3323",
        "+1 (610) 443-0002"
    ]
}
