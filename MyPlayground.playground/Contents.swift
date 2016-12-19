//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// guard
func aFunc()
{
    if "asdasd" == "asdasd"
    {
        if "asd" == "asd"
        {
            if "dsadsa" == "dsadsa"
            {
                if "asd" != "dsa"
                {
                    // do something
                }
            }
        }
    }
}

func aFunc2()
{
    guard "asdasda" == "asdasd" else {
        return;
    }
    guard "asddsa" == "dsasad" else {
        return;
    }
    guard "asddsa" == "dsada" else {
        return;
    }
    guard "asdasd" == "asdasa" else{
        return;
    }
    // do something if all of the above are true
}

// closure

func requestDataFromServer(completion:(_ errorNumber:Int)->Void)
{
    completion(0)
}

func displayDataFromServer()
{
    print("Data from server displayed")
}

func doEverything()
{
    requestDataFromServer { (errorNumber) in
        if errorNumber > 0
        {
            // execute someting when there is an error
            print("Server responded with error \(errorNumber)")
            return;
        }
        displayDataFromServer()
        // execute normal sequence
    }
}

doEverything()


// Homework help

enum MeasurementUnit
{
    case gr
    case ml
    case l
    case pcs
}
enum Products
{
    case Milk
    case Eggs
    case Butter
}

let availability:[Products:(qty:Float, unit:MeasurementUnit)] = [.Milk:(50,.ml), .Eggs:(4,.pcs)]

var receip1:[Products:(qty:Float, unit:MeasurementUnit)] = [.Milk:(100, .ml), .Eggs:(3, .pcs), .Butter:(30, .pcs)]

func checkAvailableProducts()
{
    for aProduct in receip1 {
        if let productQtyInHome = availability[aProduct.key]
        {
            guard aProduct.value.unit == productQtyInHome.unit  else {
                print("Incorrect units")
                return
            }
            
            if aProduct.value.qty > productQtyInHome.qty
            {
                print("You need to buy \(aProduct.value.qty - productQtyInHome.qty) \(aProduct.value.unit) of \(aProduct.key)")
            }
            
        }
        else
        {
            print("You need to buy \(aProduct.value.qty) \(aProduct.value.unit) of \(aProduct.key)")
        }
    }
}

checkAvailableProducts()

print((50,50) > (40, 50))

UIView.animate(withDuration: 6.0, animations: {
    
})

