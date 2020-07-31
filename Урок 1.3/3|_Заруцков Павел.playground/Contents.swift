import UIKit
import PlaygroundSupport
import Foundation

enum CarAction {
    case engineOn, engineOff
    case openWindows, closeWindows
    case cargoLoading, cargoUnloading
}

struct PassengerCar {
    let model: String
    let year: Int
    let engineWork: Bool
    let openWindows: Bool
    let vVolume: Double
    let fillTheVolume: Double
        mutating func carAction (action: CarAction) {
            switch action {
            case .engineOn:
                if engineWork == true {
                   print("Двигатель работает")
                }
                else {
                    print("Двигатель не работает")
                }
            case .openWindows:
                if openWindows == true {
                    print("Окна открыты")
                }
                else {
                    print("Окна закрыты")
                }

            case .engineOff:
                if engineWork == true {
                    print("Двигатель не работает")
                }
                else {
                    print("Двигатель работает")
                }
            case .closeWindows:
                if openWindows == true {
                    print("Окна закрыты")
                }
                else {
                    print("Окна открыты")
                }
            case .cargoLoading:
                if fillTheVolume < vVolume {
                    print("Нельзя загрузить")
                }
                else {
                    print("груз загружен")
                }
            case .cargoUnloading:
                if vVolume < fillTheVolume {
                    print("Грузы выгружен")
                }
                else {
                    print("груз не выгружен")
                }
            }
        }
        init(model: String, year: Int, engineWork: Bool, openWindows: Bool, vVolume: Double, fillTheVolume: Double) {
        self.model = model
        self.year = year
        self.engineWork = engineWork
        self.openWindows = openWindows
        self.vVolume = 3
        self.fillTheVolume = 1
    }
    func resultPassengerCar () {
        print("марка автомобиля \(model), год выпуска \(year), двигатель \(engineWork), окна \(openWindows), объем кузова \(vVolume), загрузка кузова \(fillTheVolume)")
    }
}

struct TruckCar {
let model: String
let year: Int
let engineWork: Bool
let openWindows: Bool
let vVolume: Double
let fillTheVolume: Double
let trailer: Bool
    mutating func carAction (action: CarAction) {
            switch action {
            case .engineOn:
                if engineWork == true {
                   print("Двигатель работает")
                }
                else {
                    print("Двигатель не работает")
                }
            case .openWindows:
                if openWindows == true {
                    print("Окна открыты")
                }
                else {
                    print("Окна закрыты")
                }

            case .engineOff:
                if engineWork == true {
                    print("Двигатель не работает")
                }
                else {
                    print("Двигатель работает")
                }
            case .closeWindows:
                if openWindows == true {
                    print("Окна закрыты")
                }
                else {
                    print("Окна открыты")
                }
            case .cargoLoading:
                if fillTheVolume < vVolume {
                    print("Нельзя загрузить")
                }
                else {
                    print("груз загружен")
                }
            case .cargoUnloading:
                if vVolume < fillTheVolume {
                    print("Грузы выгружен")
                }
                else {
                    print("груз не выгружен")
                }
                if trailer == true {
                    print("Имеет  прицеп")
                }
                else {
                    print("не имеет прицепа")
                }
            }

        }

        init(model: String, year: Int, engineWork: Bool, openWindows: Bool, vVolume: Double, fillTheVolume: Double, trailer: Bool) {
        self.model = model
        self.year = year
        self.engineWork = engineWork
        self.openWindows = openWindows
        self.vVolume = 20
        self.fillTheVolume = 10
        self.trailer = trailer
    }
    func resultTruckCar () {
        print("марка автомобиля \(model), год выпуска \(year), двигатель \(engineWork), окна \(openWindows), объем кузова \(vVolume), загрузка кузова \(fillTheVolume), прицеп \(trailer)")
    }
}

var car1 = PassengerCar(model: "Skoda", year: 2015, engineWork: true, openWindows: true, vVolume: 3, fillTheVolume: 1)
var car2 = TruckCar(model: "Volvo", year: 2010, engineWork: false, openWindows: false, vVolume: 20, fillTheVolume: 10, trailer: true)
print(car1.model)
print(car2.engineWork)

