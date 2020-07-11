import UIKit
import PlaygroundSupport
import Foundation

enum CarAction {
    case EngineStarted, EngineStopped
    case WindowsOpen, WindowsClose
    case SportTires, NotSportTires
    }

class Car {
    let model: String
    let year: Int
    let engineWork: Bool
    let windows: Bool
    let vVolume: Double
    let fillTheVolume: Double
    let tires: Bool

    init(model: String, year: Int, engineWork: Bool, windows: Bool, vVolume: Double, fillTheVolume: Double, tires: Bool) {
        self.model = model
        self.year = year
        self.engineWork = engineWork
        self.windows = windows
        self.vVolume = vVolume
        self.fillTheVolume = fillTheVolume
        self.tires = tires
        }
        func carAction (action: CarAction) {
        switch action {

            case .EngineStarted:
        if engineWork == true{
            print("Двигатель запущен")
            }
            case .EngineStopped:
        if engineWork == false{
            print("Двигатель заглушен")
            }
            case .WindowsOpen:
        if windows == true{
            print("Окна открыты")
        }
            case .WindowsClose:
        if windows == false{
            print("Окна закрыты")
        }
            case .SportTires:
        if tires == true{
            print("У авто спортивная резина")
        }
            case .NotSportTires:
        if tires == false{
            print("У авто обычная резина")
        }
    }
}
        func Wheel(){
            print("Авто имеет 2 колеса")
        }
}
class TruckCar: Car {
    var trailer: String
    init(model: String, year: Int, engineWork: Bool, windows: Bool, vVolume: Double, fillTheVolume: Double, tires: Bool, trailer: String) {
        self.trailer = trailer
        super.init(model: model, year: year, engineWork: engineWork, windows: windows, vVolume: vVolume, fillTheVolume: fillTheVolume, tires: tires)
    }
    override func Wheel(){
        print("Авто имеет 4 колеса")
    }

}

class SportCar: Car {
    var accelerationPerSecond: Double
    init(model: String, year: Int, engineWork: Bool, windows: Bool, vVolume: Double, fillTheVolume: Double, tires:Bool, accelerationPerSecond: Double) {
        self.accelerationPerSecond = accelerationPerSecond
        super.init(model: model, year: year, engineWork: engineWork, windows: windows, vVolume: vVolume, fillTheVolume: fillTheVolume, tires: tires)
}
    override func Wheel(){
        print("Авто имеет 6 и более колёс")
}

}
var car1 = TruckCar(model: "Volvo", year: 2010, engineWork: true, windows: false, vVolume: 15, fillTheVolume: 12, tires: false, trailer: "Kogel")
print(car1.trailer)
var car2 = SportCar(model: "Ferrari", year: 2019, engineWork: true, windows: true, vVolume: 0.1, fillTheVolume: 0, tires: true, accelerationPerSecond: 2.8)
print(car2.Wheel())

