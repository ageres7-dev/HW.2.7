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
        "Steven",
        "Stan",
        "Kyle",
        "Eric",
        "Kenny",
        "Butters",
        "Randy",
        "Sharon",
        "Sheila",
        "Gerald",
        "Jimmy",
        "Wendy",
        "Rick",
        "Morty",
        "Toby",
        "Justin",
        "Alan"
        
    ]
    
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins",
        "Marsh",
        "Broflovski",
        "Cartman",
        "McCormick",
        "Stotch",
        "Marsh",
        "Garrison",
        "Broflovski",
        "Testaburger",
        "Parker",
        "Valmer",
        "Sanchez",
        "Roiland",
        "Rails"
    ]
    
    let emails = [
        "rat@yahoo.com",
        "cock@icloud.com",
        "pig@me.com", 
        "cat@icloud.com",
        "goose@yahoo.com",
        "dog@gmail.com",
        "bee@mail.ru",
        "monkey@me.com",
        "elephant@gmail.com",
        "cow@gmail.com",
        "bird@gmail.com",
        "horse@mail.ru",
        "snake@mail.ru",
        "den@me.com",
        "goat@mail.ru",
        "spider@gmail.com",
        "bull@mail.ru",
        "duck@mail.ru",
        "rabbit@gmail.com",
        "sheep@gmail.com",
        "bear@gmail.com",
        "fish@yahoo.com",
        "deer@mail.ru",
        "hen@yahoo.com",
        "stable@gmail.com"
    ]
    let numbers = [
        "+1 (790) 340-8803",
        "+1 (721) 490-8597",
        "+1 (502) 332-2796",
        "+1 (986) 465-4962",
        "+1 (797) 486-4149",
        "+1 (871) 429-6232",
        "+1 (593) 163-2688",
        "+1 (424) 320-9790",
        "+1 (860) 283-8983",
        "+1 (901) 781-9232",
        "+1 (321) 338-6112",
        "+1 (925) 260-2000",
        "+1 (876) 417-1750",
        "+1 (512) 689-9267",
        "+1 (680) 149-2966",
        "+1 (981) 737-2290",
        "+1 (372) 680-5796",
        "+1 (580) 612-3814",
        "+1 (726) 423-6044",
        "+1 (657) 814-5392",
        "+1 (893) 426-7730",
        "+1 (515) 422-6778",
        "+1 (310) 306-9452",
        "+1 (924) 114-9657",
        "+1 (729) 441-4037",
        "+1 (677) 609-6063",
        "+1 (494) 639-2131",
        "+1 (540) 339-7288",
        "+1 (257) 649-1099",
        "+1 (743) 928-3483"
    ]
}
