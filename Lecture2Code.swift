//: Playground - noun: a place where people can play

import UIKit

func greet(person:String) -> String
{
    let returnString = "Hello \(person)"
    return returnString
}

func createEmail(toAddress: String, fromAddress: String,
                 withSubject: String, message: String) -> String
{
    let email = "To: \(toAddress)\nFrom: \(fromAddress)\nSubject:\(withSubject)\n\(message) \n"
    return email
}

print(createEmail(toAddress: "mark@facebook.com",fromAddress: "me@martink.com", withSubject: "How R U", message: "Hello my friend. How are you."))


// Task 1

//The tripLength in kilometers, duration in hours
func averageSpeedFor(tripLength: Float, duration:Float) -> Float
{
    return tripLength/duration
}

let averageSpeedInKmph = averageSpeedFor(tripLength: 371, duration: 2.3)
print(averageSpeedInKmph)

// 1 mile = 1.609
func convertToMphFrom(kmph: Double) -> Double
{
    return kmph/1.609
}

let averageSpeedInMph = convertToMphFrom(kmph: Double(averageSpeedInKmph))
print(averageSpeedInMph)

func convertToMetersPerSecondFrom(kmph: Float) -> Float
{
    return kmph/3.6
}

print(convertToMetersPerSecondFrom(kmph: averageSpeedInKmph))

func convertToMph(from speedInKmph:Float) -> Float
{
    return speedInKmph/1.609
}

convertToMph(from: averageSpeedInKmph)

func aFuncWithManyArgumets(one argumentOne:String, two argumentTwo:Int, three argumentThree: Double)
{
}
aFuncWithManyArgumets(one: "asdasd", two: 123, three: 321.2)
//aFuncWithManyArgumets("asdasasd", 123, 321.2)

func aFuncWithManyArgumets(_ argumentOne:String, argumentTwo:Int, argumentThree: Double)
{
}

aFuncWithManyArgumets("asdasdad", argumentTwo:123, argumentThree:321.2)

var invitedGuests = ["Tom", "Janna", "Alex", "Martin"]
print(invitedGuests[2])
invitedGuests.append("Brian")
invitedGuests.remove(at: 3)
invitedGuests.index(of: "Tom")
invitedGuests.removeAll()
invitedGuests.isEmpty

var numbers:[Int] = []
numbers.append(contentsOf: [1,2,3,4,5,6,7])


var favoriteArtists: Set<String> = ["Weeknd", "Rihanna", "Seether"]
favoriteArtists.insert("Jaya the cat")
print(favoriteArtists.sorted())
favoriteArtists.count






var places: [String:(lat:Double, lon:Double)] = ["Sofia":(42.7, 23.3),
                                                 "Vienna":(48.12, 16.22), "San Francisco":(37.47, -122.25)]
places["Sofia"]
places["Barcelona"] = (47.23, 2.11) // insert
places["Sofia"] = (42.7, 23.6) // modify
print(places)

places.removeValue(forKey: "Sofia")
places["Barcelona"] = nil
print(places)


let lotteryNumbers = [4,8,15,16,23,42]
for number in lotteryNumbers
{
    print("Current number \(number)")
}

for _ in 1...5
{
    print("Няма да говоря повече по време на занятие")
}



let animals:[String: Int] = ["Spider":8, "Fly":6, "Horse":4,
                             "Fiki":0]
for anAnimal in animals
{
    print("\(anAnimal.key) has \(anAnimal.value) legs")
}

let persons: [String: Bool] = ["Max":true, "Anne":true,
                               "Isdislav":false]


for person in persons
{
    if person.value == true
    {
        print("\(person.key) please enter")
    }
    else
    {
        print("\(person.key) go home")
    }
}


func checkAge(age:Int) -> String
{
    // age = 15
    var returnValue: String = ""
    if age <= 0
    {
        returnValue = "Error"
    }
    else if age < 14
    {
        returnValue = "Child"
    }
    else if age >= 14 && age < 18
    {
        returnValue = "Minor"
    }
    else // can just use "else" for all other cases
    {
        returnValue = "Adult"
    }
    return returnValue
}

checkAge(age: -1)






