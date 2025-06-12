
import UIKit

class ViewController: UIViewController {
    
    class Person {
        let name: String
        let age: Int
        weak var apartment: Apartment?
        
        init(name: String, age: Int) {
            self.name = name
            self.age = age
            print("name: \(name), age: \(age)")
        }
        deinit {
            print("Person deinit")
        }
    }
    
    class Apartment {
        let address: String
        let rentPrice: Int
        weak var person: Person?
        
        init(address: String, rentPrice: Int) {
            self.address = address
            self.rentPrice = rentPrice
            print("address: \(address), rentPrice: \(rentPrice)")
        }
        deinit {
            print("Apartment deinit")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testMemory()
    }
    
    func testMemory() {
        
        var person1: Person? = Person(name: "Dima", age: 25)
        var person2: Person? = Person(name: "Daria", age: 22)
        
        var apartment1: Apartment? = Apartment(address: "Kiev", rentPrice: 1000)
        var apartment2: Apartment? = Apartment(address: "Minsk", rentPrice: 800)
        
        
        person1?.apartment = apartment1
        person2?.apartment = apartment2
        
        apartment1?.person = person1
        apartment2?.person = person2
        
        person1 = nil
        person2 = nil
        
        apartment1 = nil
        apartment2 = nil
        
    }
}



