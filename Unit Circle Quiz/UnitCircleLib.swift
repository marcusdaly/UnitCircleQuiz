////
////  UnitCircleLib.swift
////  Unit Circle Quiz
////
////  Created by Marcus Daly on 10/29/14.
////  Copyright (c) 2014 Marcus Daly. All rights reserved.
////
//
//import Foundation
//
//func solve(question: String) -> String {
//    var ucHelper = UnitCircleHelper()
//    return simplify(ucHelper.answerFor(question))
//}
//
//// Useful contants
//let NOT_FOUND = -1
//let PI_CHAR    : Character = "π"
//let SLASH_CHAR : Character = "/"
//let MINUS_CHAR : Character = "-"
//
////
//// Returns the index of the characterToFind, or NOT_FOUND if not in stringToSearch
////
//func characterIndex(stringToSearch : String, characterToFind : Character) -> String.Index {
//    var result = NOT_FOUND
//    
//    if let characterIndex : String.Index = find(stringToSearch, characterToFind) {
//        result = distance(stringToSearch.startIndex, characterIndex as String.Index)
//        //result = distance(stringToSearch.startIndex, stringToSearch.endIndex)
//    }
//    return result
//}
//
////
//// Returns the text that preceds the Pi symbol (π) or "" if not found.
////
//func prePi(stringToSearch: String) -> String {
//    
//    var prefix: String = ""
//    
//    let piPosition = characterIndex(stringToSearch, PI_CHAR);
//    if (piPosition != NOT_FOUND) {
//        let rangeOfPrefix = Range<String.Index>(start: stringToSearch.startIndex, end: piPosition)
//        prefix = stringToSearch.substringWithRange(rangeOfPrefix)
//    } else {
//        println("'\(PI_CHAR)' not found")
//    }
//    return prefix
//}
//
//func simplify(trigFunc: String) -> String {
//    
//    // Some setup info
//    // Theta is the stuff between the parens
//    var thetaStartIndex: Int = 4
//    var thetaEndIndex: Int = trigFunc.length - 2
//    var thetaRange : NSRange = NSMakeRange(thetaStartIndex, thetaEndIndex - thetaStartIndex)
//    var uTheta: String = trigFunc.subStringFromRange(thetaRange)
//
//    println(uTheta)
//    
//    var piPrefix : String = prePi(uTheta)
//    var piLoc : Int = characterIndex(uTheta, PI_CHAR)
//    var slashLoc : Int = characterIndex(uTheta, SLASH_CHAR)
//    var minusLoc : Int = characterIndex(uTheta, MINUS_CHAR)
//    
//    
//    var n, d:Int
//    var nString, dString: String
//    let original = trigFunc
//    var nsFunc = trigFunc as NSString
//    
//    if trigFunc == "Can't help you with that yet." {
//        return original
//    }
//    
//    if nsFunc.length == 7 {
//        d = 1
//    }
//    else {
//        nsFunc = nsFunc.substringFromIndex(4)
//        nsFunc = nsFunc.substringToIndex(nsFunc.length - 1)
//        dString = nsFunc.substringFromIndex(nsFunc.length - 1)
//        if dString == "π" {
//            d = 1
//        }
//        else {
//            d = dString.toInt()!
//        }
//    }
//    nString = prePi(nsFunc as String)
//    
//    if nString == "" {
//        return original
//    }
//    
//    n = nString.toInt()!
//    //TODO When Negative...
//    while n > 2 * d {
//        n = n - 2 * d
//    }
//    
//    var ans: NSString = original
//    ans = ans.substringToIndex(4)
//    ans = "\(ans)\(n)π/\(d))"
//    return ans as String
//}
//
//func funcString() -> String {
//    var type: String = ""
//    
//    var n: Int = (Int)(arc4random()) % 22
//    var d: Int = 0
//    var i: Int = (Int)(arc4random()) % 6
//    var di = (Int)(arc4random()) % 4
//    var j = 2
//    
//    switch di {
//    case 0:
//        d = 2;
//        break;
//    case 1:
//        d = 3;
//        break;
//    case 2:
//        d = 4;
//        break;
//    case 3:
//        d = 6;
//        break;
//    default:
//        break;
//    }
//    
//    switch i {
//    case 0:
//        type = "cos"
//        break
//    case 1:
//        type = "sin"
//        break
//    case 2:
//        type = "tan"
//        break
//    case 3:
//        type = "sec"
//        break
//    case 4:
//        type = "csc"
//        break
//    case 5:
//        type = "cot"
//        break
//    default:
//        break
//    }
//    
//    while j < 5 {
//        if (d%j == 0 && n%j == 0) {
//            d = d/j
//            n = n/j
//        }
//        else {
//            j++
//        }
//    }
//    if n == 0 {
//        return "\(type)(0)"
//    }
//    if d == 1 {
//        if n == 1 {
//            return "\(type)(π)"
//        }
//        return "\(type)(\(n)π)"
//    }
//    if n == 1 {
//        return "\(type)(π/\(d))"
//    }
//    
//    return "\(type)(\(n)π/\(d))"
//}