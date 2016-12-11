let string = "aasdfASDFoqwepmqnASDwlkanwdADs"
var dict = [Character:Int]()
func checkAndIncrease(for char:Character)
{
    //if let repeating = dict[char]
    if let repeating = dict[char]
    {
        dict[char] = repeating + 1
    }
    else
    {
        dict[char] = 1
    }
}

for char in string.characters
{
    switch char
    {
    case "a":
        checkAndIncrease(for:"a")
    case "o":
        checkAndIncrease(for: "o")
    case "e":
        checkAndIncrease(for: "e")
    case "u":
        checkAndIncrease(for: "u")
    case "i":
        checkAndIncrease(for: "i")
    default:
        checkAndIncrease(for: "`")
    }
}

print(dict)


let pile1 = ["7", "8", "J", "Q", "K", "A", "10", "9"]
let pile2 = ["7", "8", "J", "Q", "K", "A", "10", "9"]

// J = 20, 9 = 14, A = 11, 10 = 10, K = 4, Q = 3, 7 = 0, 8 = 0

//func countPoints(inPile pile:[String]) -> Int
//{
//    var points = 0
//    for aCard in pile
//    {
//        switch aCard {
//        case "J":
//            points += 20
//        case "9":
//            points += 14
//        case "A":
//            points += 11
//        case "10":
//            points += 10
//        case "K":
//            points += 4
//        case "Q":
//            points += 3
//        default:
//            break
//        }
//    }
//    return points
//}

//print(countPoints(inPile: pile1))


let somePoint = (3,3,3)
switch somePoint {
    case (0,0,0):
        print("center")
    case (_, 0, _):
        print("on x axis")
    case (0, _, _):
        print("on y axis")
    case (let x, let y, _) where x==y:
        print("Diagonal")
    case (-2...2, -2...2, -2...2):
        print("close to center")
    default:
        print("somewhere")
}

enum Planet:Int {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

let planet:Planet

planet = .Mars

switch planet
{
case .Mercury:
    print("0.4 AU")
case .Venus:
    print("0.7 AU")
case .Earth:
    print("1.0 AU")
case .Mars:
    print("1.5 AU")
case .Jupiter:
    print("5.2 AU")
case .Saturn:
    print("9.5 AU")
case .Uranus:
    print("19.2 AU")
case .Neptune:
    print("30.1 AU")
}


enum CompassDirections:String
{
    case North = "North"
    case South = "South"
    case East = "East"
    case West = "West"
}


enum Barcode
{
    case upc(Int,Int,Int,Int)
    case QRCode(String)
}
let barcode = Barcode.upc(123, 321, 213, 111)
    switch barcode {
    case .QRCode(let productCode):
    print(productCode)
    case .upc(let numberSystem, let manufacturer, let product, let check):
    print(numberSystem,manufacturer,product,check)
}



let numbers = [1,2,4,5,1,2,4,7,3,2,6,1,73,927,74,42,827,75,81,25,94,27,48]
for number in numbers
{
    if number == 42
    {
        print("got it")
        break
    }
}

for number in numbers
{
    if number != 42
    {
        continue
    }
    print("got it")
    break
}



let number = 13
switch number {
case 11, 13, 15, 17, 19:
    print("More than 10")
    fallthrough
case 1,3,5,7,9:
    print("Odd number")
case 13:
    print("13")
default:
    print("Even number or larger than 19")
}





enum GameType{
    case AllTrump, NoTrump
}

enum CardsAndBonuses:String
{
    case A = "A"
    case c7 = "7"
    case c8 = "8"
    case c9 = "9"
    case c10 = "10"
    case J = "J"
    case Q = "Q"
    case K = "K"
    case Belote = "Belote"
    case Tierce = "Tierce"
    case Quartet = "Quartet"
    case Quint = "Quint"
    case CarreJ = "CarreJ"
    case Carre9 = "Carre9"
    case CarreA = "CarreA"
    case Carre10 = "Carre10"
    case CarreK = "CarreK"
    case CarreQ = "CarreQ"
    case LastTen = "Last10"
}

func countPoints(for stringPile:[String], game: GameType) -> Int
{
    var pile = [CardsAndBonuses]()
    for item in stringPile
    {
        if let aCard = CardsAndBonuses(rawValue: item)
        {
            pile.append(aCard)
        }
        else
        {
            print("Error: item at index \(stringPile.index(of: item)) is not convertable to card")
        }
    }
    
    return countPoints(for: pile, game: game)
}

func countPoints(for pile:[CardsAndBonuses], game: GameType) -> Int
{
    var result = 0
    for item in pile
    {
        switch item {
        case .A:
            result += 11
        case .c9 where game == .AllTrump:
            result += 14
        case .c10:
            result += 10
        case .J where game == .AllTrump:
            result += 20
        case .J where game == .NoTrump:
            result += 2
        case .Q:
            result += 3
        case .K:
            result += 4
        case .Belote where game == .AllTrump:
            fallthrough
        case .Tierce where game == .AllTrump:
            result += 20
        case .Quartet where game == .AllTrump:
            result += 50
        case .Quint where game == .AllTrump:
            result += 100
        case .CarreJ where game == .AllTrump:
            result += 200
        case .Carre9 where game == .AllTrump:
            result += 150
        case .CarreA where game == .AllTrump:
            fallthrough
        case .CarreK where game == .AllTrump:
            fallthrough
        case .CarreA where game == .AllTrump:
            fallthrough
        case .Carre10 where game == .AllTrump:
            result += 100
        case .LastTen:
            result += 10
        default:
            break

        }
    }
    
    switch game {
    case .NoTrump:
        return result * 2
    case .AllTrump:
        return result
    }
    
}


let BelotePile1 = ["A", "K", "J", "10", "Quartet", "Quint"]
let BelotePile2 = ["A", "K", "J", "Q", "Quartet", "Quint", "Last10"]

print(countPoints(for: BelotePile1, game: .AllTrump))
print(countPoints(for: BelotePile2, game: .NoTrump))






