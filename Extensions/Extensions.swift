//
//  Extensions.swift
//  Extensions
//
//  Created by Rama Milaneh on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
extension String{
    func whisper() ->String {return self.lowercased()}
}

extension String{
    func shout() ->String{return self.uppercased()}
}

extension String{
    var pigLatin: String{
        if self.characters.count == 1{
            return self
        }else{
            var arrayOfWords = Array(self.lowercased().components(separatedBy: " "))
            
            for i in 0...arrayOfWords.count-1{
                let firstLetter = arrayOfWords[i].characters.first
                let index = arrayOfWords[i].characters.startIndex
                arrayOfWords[i].remove(at: index)
                arrayOfWords[i].append(firstLetter!)
                arrayOfWords[i].append("ay")
               
            }
            return arrayOfWords.joined(separator: " ").capitalized
        }
    }
}

extension String{
    var points: Int{
        var points = 0
        for char in self.lowercased().characters{
            switch String(char){
            case "e","a","o","i","u","y":
            points += 2
            case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z":
                points += 1
            default:
                points += 0
        }
    }
   return points
}
}

extension Int{
    func half() ->Int{ return self/2}
}

extension Int{
    func isDivisible(by number:Int) ->Bool{
        return self % number == 0}
    }
extension Int{
    var squared: Int{
        return self*self
    }
}
extension Int{
    var halved: Int{
        return self.half()
    }
}

extension String{
    var unicornLevel: String{
        var numbersOfUnicorn = ""
        for char in self.characters{
            if String(char) != " "{
                numbersOfUnicorn += "🦄"
        }
        }
        return numbersOfUnicorn
    }
}
