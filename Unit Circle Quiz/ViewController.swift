//
//  ViewController.swift
//  Unit Circle Quiz
//
//  Created by Marcus Daly on 10/29/14.
//  Copyright (c) 2014 Marcus Daly. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var currentTrigFunc: TrigFunc = TrigFunc()    
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var startOrNextButton: UIBarButtonItem!

    // To play sounds, we'll need some audioplayers
    var startNextSoundURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hi-hat", ofType: "wav")!)
    var answerSoundURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("cowbell", ofType: "wav")!)
    var startNextAudioPlayer = AVAudioPlayer()
    var answerAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.hidden = true
        
        // prep the audioplayers (in case needed)
        startNextAudioPlayer = AVAudioPlayer(contentsOfURL: startNextSoundURL, error: nil)
        startNextAudioPlayer.prepareToPlay()
        
        answerAudioPlayer = AVAudioPlayer(contentsOfURL: answerSoundURL, error: nil)
        answerAudioPlayer.prepareToPlay()
        
    }

    @IBAction func newFunction(sender: AnyObject) {
        if (NSUserDefaults.standardUserDefaults().boolForKey(K_PLAY_SOUND_ON_START_NEXT)) {
            startNextAudioPlayer.play()
        }
        
        currentTrigFunc = TrigFunc()
        output.text = currentTrigFunc.funcLabel
        answerLabel.hidden = true
        startOrNextButton.title = "Next"
    }

    @IBAction func onAnswerTap(sender: AnyObject) {
        if (NSUserDefaults.standardUserDefaults().boolForKey(K_PLAY_SOUND_ON_ANSWER)) {
            answerAudioPlayer.play()
        }
        
        answerLabel.text = currentTrigFunc.ans
        answerLabel.hidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

