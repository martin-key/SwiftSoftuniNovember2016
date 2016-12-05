import Foundation

struct Student{
    var name: String
    var facultyNumber: String
    var age: Int
    var mark1: Float
    var mark2: Float
    var mark3: Float
    
    func averageMark() -> Float
    {
        let averageMarkToReturn:Float = (mark1 + mark2 + mark3) / 3
        return averageMarkToReturn
    }
}

func averageMark(forStudent:Student) -> Float
{
    let averageMarkToReturn:Float = (forStudent.mark1 + forStudent.mark2 + forStudent.mark3) / 3
    return averageMarkToReturn
}

let student1 = Student(name: "1", facultyNumber: "12312313", age: 21, mark1: 5.1, mark2: 5.2, mark3: 5.3)
let student2 = Student(name: "2", facultyNumber: "123123", age: 21, mark1: 3, mark2: 3, mark3: 3)
let student3 = Student(name: "3", facultyNumber: "12321321123", age: 32, mark1: 6, mark2: 5, mark3: 6)



func compare(aStudent: Student, anotherStudent: Student) -> Student
{
    if(aStudent.averageMark() > anotherStudent.averageMark())
    {
        return aStudent
    }
    else
    {
        return anotherStudent
    }
}

let betterStudent1 = compare(aStudent: student1, anotherStudent: student2)
let betterStudent2 = compare(aStudent: betterStudent1, anotherStudent: student3)

print(betterStudent2)

// recursively

print(compare(aStudent: student1, anotherStudent: compare(aStudent: student2, anotherStudent: student3)))








func sum(number1: Int, number2:Int) -> Int
{
    let result = number1 + number2
    return result
}

let aSumOfNumber = sum(number1: 3, number2: 4)
print(aSumOfNumber)



