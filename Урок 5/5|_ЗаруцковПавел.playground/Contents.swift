import UIKit
import PlaygroundSupport
import Foundation

protocol Car {
    var openWindows: Bool { get }
    var startedEngine: Bool { get }
}

extension Car {
    func Windows() {
        if openWindows == true {
            print("Окна открыты")
        } else {
            print("Окна закрыты")
        }
    }
    func Engine(){
        if startedEngine == true {
            print("Машина заведена")
        } else {
            print("Машина заглушена")
        }
    }
}

class SportCar: Car {
    var openWindows: Bool
    var startedEngine: Bool
    var maxSpeedPerSecond: Double
    
    init(openWindows: Bool, startedEngine: Bool, maxSpeedPerSecond: Double) {
        self.openWindows = openWindows
        self.startedEngine = startedEngine
        self.maxSpeedPerSecond = maxSpeedPerSecond
    }
}
extension SportCar: CustomStringConvertible {
    var description: String {
        return "(\(maxSpeedPerSecond))"
    }
    
    
}

class TrunkCar: Car {
    var openWindows: Bool
    var startedEngine: Bool
    var trunkVolume: Double
    
    init(openWindows: Bool, startedEngine: Bool, trunkVolume: Double) {
        self.openWindows = openWindows
        self.startedEngine = startedEngine
        self.trunkVolume = trunkVolume
    }
}
extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "(\(trunkVolume))"
    }
}
var car1 = SportCar(openWindows: true, startedEngine: true, maxSpeedPerSecond: 280)
print(car1.maxSpeedPerSecond)
var car2 = TrunkCar(openWindows: false, startedEngine: true, trunkVolume: 20)
print(car2.Engine())


