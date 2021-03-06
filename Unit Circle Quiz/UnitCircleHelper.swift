//
//  UnitCircleHelper.swift
//  ucDisct Play
//
//  Created by Rob Daly on 10/30/14.
//  Copyright (c) 2014 Mobulz, LLC. All rights reserved.
//

import Foundation

class UnitCircleHelper {
  
    let ucDict : [String: String] =
    [
        // COS
        "cos(0)"    : "1",
        "cos(π/6)"  : "(√3)/2",
        "cos(π/4)"  : "(√2)/2",
        "cos(π/3)"  : "1/2",
        "cos(π/2)"  : "0",
        "cos(2π/3)" : "-1/2",
        "cos(3π/4)" : "-(√2)/2",
        "cos(5π/6)" : "-(√3)/2",
        "cos(π)"    : "-1",
        "cos(7π/6)" : "-(√3)/2",
        "cos(5π/4)" : "-(√2)/2",
        "cos(4π/3)" : "-1/2",
        "cos(3π/2)" : "0",
        "cos(5π/3)" : "1/2",
        "cos(7π/4)" : "(√2)/2",
        "cos(11π/6)": "(√3)/2",

        // SIN
        "sin(0)"    : "0",
        "sin(π/6)"  : "1/2",
        "sin(π/4)"  : "(√2)/2",
        "sin(π/3)"  : "(√3)/2",
        "sin(π/2)"  : "1",
        "sin(2π/3)" : "(√3)/2",
        "sin(3π/4)" : "(√2)/2",
        "sin(5π/6)" : "1/2",
        "sin(π)"    : "0",
        "sin(7π/6)" : "-1/2",
        "sin(5π/4)" : "-(√2)/2",
        "sin(4π/3)" : "-(√3)/2",
        "sin(3π/2)" : "-1",
        "sin(5π/3)" : "-(√3)/2",
        "sin(7π/4)" : "-(√2)/2",
        "sin(11π/6)": "-1/2",

        // SEC
        "sec(0)"    : "1",
        "sec(π/6)"  : "2/(√3)",
        "sec(π/4)"  : "(√2)",
        "sec(π/3)"  : "2",
        "sec(π/2)"  : "NaN",
        "sec(2π/3)" : "-2",
        "sec(3π/4)" : "-(√2)",
        "sec(5π/6)" : "-2/(√3)",
        "sec(π)"    : "-1",
        "sec(7π/6)" : "-2/(√3)",
        "sec(5π/4)" : "-(√2)",
        "sec(4π/3)" : "-2",
        "sec(3π/2)" : "NaN",
        "sec(5π/3)" : "2",
        "sec(7π/4)" : "(√2)",
        "sec(11π/6)": "2/(√3)",
        
        // CSC
        "csc(0)"    : "NaN",
        "csc(π/6)"  : "2",
        "csc(π/4)"  : "(√2)",
        "csc(π/3)"  : "2/(√3)",
        "csc(π/2)"  : "1",
        "csc(2π/3)" : "2/(√3)",
        "csc(3π/4)" : "(√2)",
        "csc(5π/6)" : "2",
        "csc(π)"    : "NaN",
        "csc(7π/6)" : "-2",
        "csc(5π/4)" : "-(√2)",
        "csc(4π/3)" : "-2/(√3)",
        "csc(3π/2)" : "-1",
        "csc(5π/3)" : "-2/(√3)",
        "csc(7π/4)" : "-(√2)",
        "csc(11π/6)": "-2",
        
        // TAN
        "tan(0)"    : "0",
        "tan(π/6)"  : "1/(√3)",
        "tan(π/4)"  : "1",
        "tan(π/3)"  : "(√3)",
        "tan(π/2)"  : "NaN",
        "tan(2π/3)" : "-(√3)",
        "tan(3π/4)" : "-1",
        "tan(5π/6)" : "-1/(√3)",
        "tan(π)"    : "0",
        "tan(7π/6)" : "1/(√3)",
        "tan(5π/4)" : "1",
        "tan(4π/3)" : "(√3)",
        "tan(3π/2)" : "NaN",
        "tan(5π/3)" : "-(√3)",
        "tan(7π/4)" : "-1",
        "tan(11π/6)": "-1/(√3)",

        // COT
        "cot(0)"    : "NaN",
        "cot(π/6)"  : "(√3)",
        "cot(π/4)"  : "1",
        "cot(π/3)"  : "1/(√3)",
        "cot(π/2)"  : "0",
        "cot(2π/3)" : "-1/(√3)",
        "cot(3π/4)" : "-1",
        "cot(5π/6)" : "-(√3)",
        "cot(π)"    : "NaN",
        "cot(7π/6)" : "(√3)",
        "cot(5π/4)" : "1",
        "cot(4π/3)" : "1/(√3)",
        "cot(3π/2)" : "0",
        "cot(5π/3)" : "-1/(√3)",
        "cot(7π/4)" : "-1",
        "cot(11π/6)": "(√3)"
    ]

    func answerFor(problem: String) -> String {

        if let result = ucDict[problem] {
            return result
        }
        else {
            return "Can't help you with that yet."
        }
    }

}

