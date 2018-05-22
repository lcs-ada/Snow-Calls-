//
//  main.swift
//  SnowCalls
//
//  My last name is: LASTNAME
//  My first name is: FIRSTNAME
//

import Foundation

// INPUT

// Global variable to track how many phone numbers we can expect from the user

// Add code below to ask the user for how many phones numbers will actually be provided

var expectedLines = 0
while 1 == 1 {
    print("How many phone numbers will be provided?")
    
    guard let validLines = readLine() else {
        continue
    }
    guard let digitsLines = Int(validLines)  else{
        continue
    }
    if digitsLines < 0 || digitsLines > 10 {
        continue
    }
    expectedLines = digitsLines
    break
}


// PROCESS & OUTPUT
// Implement the primary logic of the problem here

// Collect the phone numbers
for n in 1...expectedLines {
    
    // Create the translated phone number
    var translatedPhoneNumber = ""
    
    // Prompt the user
    print("Enter phone number \(n):")
    
    guard let givenPhoneNumber = readLine() else {
        continue
    }
 //check
    for character in givenPhoneNumber{
        print(character)
  
        switch character {
        case "A", "B", "C":
            translatedPhoneNumber += "2"
            
            
        case "D", "E", "F":
            translatedPhoneNumber += "3"
            
        case "G", "H", "I":
            translatedPhoneNumber += "4"
            
        case "J", "K", "L":
            translatedPhoneNumber += "5"
            
        case "M", "N", "O":
            translatedPhoneNumber += "6"
            
        case "P", "Q", "R", "S":
            translatedPhoneNumber += "7"
            
        case "T", "U", "v":
            translatedPhoneNumber += "8"
            
        case "-":
            translatedPhoneNumber += ""
            
        case "W", "X", "Y", "Z":
            translatedPhoneNumber += "9"
        
            
            default:
                translatedPhoneNumber += String (character)
        }
        
        //insert dash?
        if translatedPhoneNumber.count == 3 || translatedPhoneNumber.count == 7 {
        translatedPhoneNumber += "-"
        
        }
        
        //should we stop?
        if translatedPhoneNumber.count == 12 {
        break
        }
    }

    // Replace this logic with the correct logic
    translatedPhoneNumber = givenPhoneNumber
    
    
    
    
    // Print out the converted number
    print("This is \(translatedPhoneNumber).")
    
}
