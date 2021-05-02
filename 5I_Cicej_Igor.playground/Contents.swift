import UIKit


protocol Car{
    func canDrive() -> Bool
}

class SportCar: Car {
    var wheels: Int
    var stateEngine: Bool
    var brand: String
    
    init(wheels: Int, stateEngine: Bool, brand: String) {
        self.wheels = wheels
        self.stateEngine = stateEngine
        self.brand = brand
    }
    
    func canDrive() -> Bool {
        if wheels != 4{
            print("You have wrong number of wheels")
            return false
        } else {
            print("You can go!")
            return true
        }
    }
}

class Truck: Car {
    var maxFillTrunk: Int
    var fillTrunk: Int
    
    init(maxFillTrunk: Int, fillTrunk: Int) {
        self.fillTrunk = fillTrunk
        self.maxFillTrunk = maxFillTrunk
    }
    func differenceFill(){
        let dif = maxFillTrunk - fillTrunk
        print ("You havent \(dif) kg. luggage")
    }
    
    func canDrive() -> Bool {
        if fillTrunk <= maxFillTrunk {
            print("You can drive")
            return true
        } else {
            print("Your luggage too big")
            return false
        }
    }
}

extension SportCar{
    func doesWorkCar() -> Bool {
        if stateEngine == true{
            print("Car is worked")
            return true
        } else {
            print("Turn on engine!")
            return false
        }
    }
}

extension SportCar: CustomStringConvertible{
    var description: String {
        return String(describing: brand)
    }
}


let car1 = SportCar(wheels: 4, stateEngine: true, brand: "Mercedes")
let car2 = SportCar(wheels: 4, stateEngine: false, brand: "VW")
car1.canDrive()
car1.stateEngine
car1.brand
car1.wheels
car2.brand
car2.stateEngine
car2.doesWorkCar()
car2.wheels



let truck1 = Truck(maxFillTrunk: 350, fillTrunk: 250)
let truck2 = Truck(maxFillTrunk: 160, fillTrunk: 220)
truck1.differenceFill()
truck1.canDrive()
truck2.canDrive()
