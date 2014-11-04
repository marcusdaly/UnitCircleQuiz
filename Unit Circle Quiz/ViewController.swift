//
//  ViewController.swift
//  Unit Circle Quiz
//
//  Created by Marcus Daly on 10/29/14.
//  Copyright (c) 2014 Marcus Daly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentTrigFunc: TrigFunc = TrigFunc()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    //
    
    @IBAction func newFunction(sender: AnyObject) {
        currentTrigFunc = TrigFunc()
        output.text = currentTrigFunc.funcLabel
//        output.text = funcString()
//        println(solve(output.text!))
        answerLabel.hidden = true
    }

    @IBAction func onAnswerTap(sender: AnyObject) {
        answerLabel.text = currentTrigFunc.ans
        answerLabel.hidden = false
//        answerLabel.text = solve(output.text!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

