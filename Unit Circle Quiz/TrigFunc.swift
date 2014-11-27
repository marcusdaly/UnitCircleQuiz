//
//  TrigFunc.swift
//  Unit Circle Quiz
//
//  Created by Marcus Daly on 10/30/14.
//  Copyright (c) 2014 Marcus Daly. All rights reserved.
//

import Foundation

class TrigFunc {
    var type: String = ""
    var uTheta: String = ""
    var sTheta: String = ""
    var funcLabel: String = ""
    var sFuncLabel: String = ""
    var ans: String = ""
    var d: Int = 0
    var n: Int = 0
    var sn: Int = 0
    
    init() {
        generateFunc()
        simplify()
        ans = UnitCircleHelper().answerFor(sFuncLabel)
    }
    
    func generateFunc() {
        n = (Int)(arc4random() % 22)
        d = 0
        var i: Int = (Int)(arc4random() % 6)
        var di = (Int)(arc4random() % 4)
        var j = 2
        
        switch di {
        case 0:
            d = 2
            break
        case 1:
            d = 3
            break
        case 2:
            d = 4
            break
        case 3:
            d = 6
            break
        default:
            break
        }
        
        switch i {
        case 0:
            type = "cos"
            break
        case 1:
            type = "sin"
            break
        case 2:
            type = "tan"
            break
        case 3:
            type = "sec"
            break
        case 4:
            type = "csc"
            break
        case 5:
            type = "cot"
            break
        default:
            break
        }
        
        while j < 5 {
            if (d%j == 0 && n%j == 0) {
                d = d/j
                n = n/j
            }
            else {
                j++
            }
        }
        
        if arc4random()%2 == 1 {
            n = -1*n
        }
        
        if n == 0 {
            uTheta = "0"
        }
        else if d == 1 {
            if n == 1 {
                uTheta = "π"
            }
            else {
                uTheta = "\(n)π"
            }
        }
        else if n == 1 {
            uTheta = "π/\(d)"
        }
        else {
            uTheta = "\(n)π/\(d)"
        }
        
        funcLabel = "\(type)(\(uTheta))"
    }
    
    func simplify() {
        sn = n
        if sn > 0 {
            while sn >= 2*d {
                sn = sn - 2*d
            }
        }
        else if sn < 0 {
            while sn < 0 {
                sn = sn + 2*d
            }
        }
        if sn == 0 {
            sTheta = "0"
        }
        else if sn == 1 {
            if d == 1 {
                sTheta = "π"
            }
            else {
                sTheta = "π/\(d)"
            }
        }
        else if d == 1 {
            sTheta = "\(sn)π"
        }
        else {
            sTheta = "\(sn)π/\(d)"
        }
        
        sFuncLabel = "\(type)(\(sTheta))"
        println(sFuncLabel)
    }

}