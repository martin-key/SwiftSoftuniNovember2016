//: Playground - noun: a place where people can play

import UIKit

let personsTicketNumbers = ["Mark":"1982981236",
                            "John":"1872396192",
                            "Peter":"8162319283"]

// Flight name = [ticket number : has checked-in]
var LZASFPassengers = ["1982981236": false,
             "8162319283":false,
             "1872396192":false ]

func checkTicketNumber(for personName: String) -> String
{
    if let ticket = personsTicketNumbers[personName]
    {
        return ticket
    }
    else
    {
        return ""
    }
}

func checkIn(_ ticketNumber: String, inFlight flight:[String:Bool]) -> Bool
{
    if let _ = flight[ticketNumber]
    {
        return true
    }
    else
    {
        return false
    }
}

let currentPersonTicket = checkTicketNumber(for:"Mark")
LZASFPassengers[currentPersonTicket] = checkIn(currentPersonTicket, inFlight: LZASFPassengers)

func checkPersonName(for ticket:String) -> String
{
    for anItem in personsTicketNumbers
    {
        if anItem.value == ticket
        {
            return anItem.key
        }
    }
    return ""
}

var uncheckedin = 0
for anItem in LZASFPassengers
{
    
    if anItem.value == true
    {
        checkPersonName(for: anItem.key)
    }
    else
    {
        uncheckedin += 1
    }
}

print(uncheckedin)




