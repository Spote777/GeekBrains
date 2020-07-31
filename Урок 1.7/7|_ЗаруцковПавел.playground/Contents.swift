import UIKit
import PlaygroundSupport
import Foundation

struct Item {
    var speed: Int
    var product: Product
    
}
struct Product {
    var name: String
}

class Cars {
    var sportCar = [
        "Bugatti Veyron" : Item(speed: 350, product: Product (name: "Bugatti Veyron")),
        "Ford Mustang" : Item(speed: 295, product: Product (name: "Ford Mustang")),
        "Audi TT" : Item(speed: 310, product: Product (name: "Audi TT"))
    ]
    enum CarError: Error {
        case noCar
    }
    func seeCar(carModel: String) throws -> Product {
        guard let item = sportCar[carModel] else {
            throw CarError.noCar
        }
        let mySeeCar = item
        return (mySeeCar.product)
        
    }
}
let cars = Cars()

do{
    let myFirstSeeCar = try cars.seeCar(carModel: "Audi TT")
} catch let error {
    print(error.localizedDescription)
}

