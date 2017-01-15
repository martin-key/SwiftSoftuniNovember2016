//: Playground - noun: a place where people can play

import UIKit

class MyFirstClass{
    
    var variable1: Int? // Optional variable
    var variable2: String! // wrapped variable
    let const1: Int
    
    init(var1:Int, var2: String, cons1: Int) {
        variable1 = var1
        variable2 = var2
        const1 = cons1
    }
    
    func printAll()
    {
        print(variable1!, variable2, const1)
    }
}

let anObject = MyFirstClass(var1: 12, var2: "asdasd", cons1: 16)
//print(anObject.variable2)
//print(anObject.const1)
//anObject.printAll()

let anotherObject = MyFirstClass(var1: 42, var2: "is not", cons1: 41)
//anotherObject.printAll()
//anotherObject.variable2 = "Hello"
//anotherObject.printAll()




// ATM - Human interaction

class Human{
    var bankAccountBalance: Float!
    var personName: String!
    var availableMoney: Float!
    
    init(personName:String, bankAccountBalance: Float, availableMoney: Float = 0) {
        self.personName = personName
        self.bankAccountBalance = bankAccountBalance
        self.availableMoney = availableMoney
    }
}

class ATM{
    var availableMoney: Float!
    
    init(availableMoney: Float) {
        self.availableMoney = availableMoney
    }
    
    func withdrawMoneyAs(user:Human, amount: Float)
    {
        //check humans bankAccount
        if user.bankAccountBalance < amount
        {
            print("Not enough balance")
            return
        }
        
        if self.availableMoney < amount
        {
            print("Not enough money in ATM")
            return
        }
        
        self.availableMoney! -= amount
        user.availableMoney! += amount
    }
    
}

let anATMmachine = ATM(availableMoney: 450)
let human = Human(personName: "Jack", bankAccountBalance: 5000, availableMoney: 50)

//anATMmachine.withdrawMoneyAs(user: human, amount: 400)

//print(human.availableMoney!)

let nextHuman = Human(personName: "Kiro", bankAccountBalance: 350)

//anATMmachine.withdrawMoneyAs(user: nextHuman, amount: 200)

//print(nextHuman.availableMoney)






// Car comparation task

enum WheelDrive
{
    case front, rear, AWD
}

struct Car{
    let make: String!
    let model: String!
    let dateOfManufacturing: (year: Int, month: Int, day: Int)!
    var hps: Float!
    let wheelDrive: WheelDrive!
    let time0to100: Float!
    let price: Float!

    init(make: String,
         model: String,
         dateOfManufacturing:(year: Int, month: Int, day: Int),
         hps: Float,
         wheelDrive: WheelDrive,
         time0to100: Float,
         price: Float)
    {
        self.make = make
        self.model = model
        self.dateOfManufacturing = dateOfManufacturing
        self.hps = hps
        self.wheelDrive = wheelDrive
        self.time0to100 = time0to100
        self.price = price
    }
    
}

class CarComparator
{
    var car1: Car!
    var car2: Car!
    
    init(car1: Car, car2:Car) {
        self.car1 = car1
        self.car2 = car2
    }
    
    func carWithMoreHps() -> Car?
    {
        return CarComparator.carWithMoreHps(car1: self.car1, car2: self.car2)
    }
    
    class func carWithMoreHps(car1: Car, car2: Car) -> Car?
    {
        if car1.hps > car2.hps
        {
            return car1
        }
        else if car1.hps < car2.hps
        {
            return car2
        }
        else
        {
            return nil
        }
        
    }
    
    func newerCar() -> Car?
    {
        if car1.dateOfManufacturing > car2.dateOfManufacturing
        {
            return car1
        }
        else if car1.dateOfManufacturing < car2.dateOfManufacturing
        {
            return car2
        }
        else
        {
            return nil
        }
    }
    
    
}

let FordMustang = Car(make: "Ford", model: "Mustang", dateOfManufacturing: (2014, 07, 27), hps: 430.0, wheelDrive: .rear, time0to100: 5.0, price: 80000)
let AcuraNSX = Car(make: "Acura", model: "NSX", dateOfManufacturing: (2014, 08, 27), hps: 430.0, wheelDrive: .AWD, time0to100: 4, price: 120000)

let aComparator = CarComparator(car1: FordMustang, car2: AcuraNSX)

//print(aComparator.carWithMoreHps()?.make)
//
//print(CarComparator.carWithMoreHps(car1: FordMustang, car2: AcuraNSX)?.make)


//var myCar = AcuraNSX
//print(myCar.hps, AcuraNSX.hps)
//
//myCar.hps = 580.0
//print(myCar.hps, AcuraNSX.hps)



// Inheritance

class Vehicle{
    let regNumber: String!
    let engine: Float!
    var hps: Float!
    let VIN: String!
    init(regNumber: String, engine: Float, hps:Float, VIN:String) {
        self.regNumber = regNumber
        self.engine = engine
        self.hps = hps
        self.VIN = VIN
    }
}

class CarClass: Vehicle
{
    let numberOfSeats: Int
    
    init(regNumber: String, engine: Float, hps:Float, VIN:String, numberOfSeats: Int)
    {
        self.numberOfSeats = numberOfSeats
        super.init(regNumber: regNumber, engine: engine, hps: hps, VIN: VIN)
    }
}


let aCar = CarClass(regNumber: "CO 7722 BH", engine: 1.2, hps: 20, VIN: "JHME12381023091823HASD10823089", numberOfSeats: 2)

//print(aCar.regNumber)
//print(aCar.numberOfSeats)

class SpecialVehicle: Vehicle
{
    let type: String!
    var notes: String!
    
    init(regNumber: String, engine: Float, hps: Float, VIN: String, type: String, notes: String) {
        self.type = type
        self.notes = notes
        super.init(regNumber: regNumber, engine: engine, hps: hps, VIN: VIN)
    }
}


class Policemen{
    var currentlyCheckedVehicle: Vehicle?
    init(currentlyCheckedVehicle: Vehicle) {
        self.currentlyCheckedVehicle = currentlyCheckedVehicle
    }
    
    func printVehicleInfo()
    {
        if let aVehicle = self.currentlyCheckedVehicle
        {
            print(aVehicle.regNumber)
            print(aVehicle.VIN)
            switch aVehicle {
            case is CarClass:
                print((aVehicle as! CarClass).numberOfSeats)
            case is SpecialVehicle:
                print((aVehicle as! SpecialVehicle).type)
                print((aVehicle as! SpecialVehicle).notes)
            default: break
            }
        }
    }
}

let aSpecialVehicle = SpecialVehicle(regNumber: "A 3981 HH", engine: 3.0, hps: 200, VIN: "Nyakakav si", type: "Bager", notes: "No Notes")
let aPolicemen = Policemen(currentlyCheckedVehicle: aCar)
aPolicemen.printVehicleInfo()
aPolicemen.currentlyCheckedVehicle = aSpecialVehicle
aPolicemen.printVehicleInfo()





