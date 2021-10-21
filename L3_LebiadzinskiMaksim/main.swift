//
//  main.swift
//  L3_LebiadzinskiMaksim
//
//  Created by MAKSIM LEBIADZINSKI on 20.10.21.
//

import Foundation

enum EngineStatus {
    case on, off
    
}

enum WindowsStatus {
    case open, close
    
}

struct SportCar {
    let brand: String
    let model: String
    let year: Int
    let mileage: Int
}

struct TrunkCar {
    let brand: String
    let model: String
    let year: Int
    let mileage: Int
    let trunkSize: Int
    var trunkFilled: Int {
        willSet {
            newValue <= trunkSize ? print("Загружено \(newValue) м3 в кузов") : print("Превышен допустимый объем груза в кузове")
        }
    }
    var engineStatus: EngineStatus {
        willSet {
            newValue == .on ? print("Двигатель \(brand) запущен") : print("Двигатель \(brand) заглушен")
        }
    }
    var windowsStatus: WindowsStatus {
        willSet {
            newValue == .open ? print("Окна \(brand) открыты") : print("Окна \(brand) закрыты")
        }
    }
}

var firstCar = SportCar(brand: "Porsche", model: "GT4", year: 2020, mileage: 10)
var doubleCar = TrunkCar(
    brand: "KAMAZ", model: "Charcoal", year: 2019, mileage: 100, trunkSize: 1000, trunkFilled: 250, engineStatus: .on, windowsStatus: .open
)

doubleCar.engineStatus = .off
doubleCar.windowsStatus = .close

print("Автомобиль \(firstCar.brand) \(firstCar.model) выпущен в \(firstCar.year) году, имеет пробег \(firstCar.mileage) km")

print("Автомобиль \(doubleCar.brand) \(doubleCar.model) выпущен в \(doubleCar.year) году, имеет пробег \(doubleCar.mileage) km, объем кузова \(doubleCar.trunkSize) м3 в котором находится \(doubleCar.trunkFilled) м3 груза")

doubleCar.trunkFilled = 1000

print("Автомобиль \(doubleCar.brand) \(doubleCar.model) выпущен в \(doubleCar.year) году, имеет пробег \(doubleCar.mileage) km, объем кузова \(doubleCar.trunkSize) м3 в котором находится \(doubleCar.trunkFilled) м3 груза")

