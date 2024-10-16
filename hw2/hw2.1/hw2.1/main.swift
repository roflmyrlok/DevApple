//
//  main.swift
//  hw2
//
//  Created by Andrii Trybushnyi on 16.10.2024.
//

class Apartment {
    let number: Int
    weak var tenant: Person?
    
    init(number: Int) {
        self.number = number
    }
    
    func getInfo() {
        print("Apartment \(number) hosting \(tenant?.name.description ?? "empty")")
    }
    
    deinit {
        print("Apartment deinitialized")
    }
}

class Person {
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    func setupApartment(_ apartment: Apartment) {
        self.apartment = apartment
    }
    
    func getInfo() {
        print("Person \(name) is in Apartment \(apartment?.number.description ?? "empty")")
    }
    
    deinit {
        print("Person deinitialized")
    }
}

var person: Person? = Person(name: "Andrii")

person?.setupApartment(Apartment(number: 17))

person?.apartment?.tenant = person
person?.getInfo()
person?.apartment?.getInfo()

person = nil

//task 1.1 make ref to Person in appartment weak

//task 1.2
/* we cannot make Person weak and Appartment unowned couse of task 1 requirements
 
 Unowned Appatment suggests that appartment can exist w/o person therefore once person is set to nil it wont be dealocated. This contradicts to task 1 requirment: "Make sure that all objects are deallocated when the `person` object is set to `nil`"

*/
    
