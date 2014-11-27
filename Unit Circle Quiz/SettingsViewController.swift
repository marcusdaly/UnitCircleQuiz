//
//  SettingsViewController.swift
//  Unit Circle Quiz
//
//  Created by Rob Daly on 11/26/14.
//  Copyright (c) 2014 Marcus Daly. All rights reserved.
//

import UIKit

// Some constnats to pordive key names for user defaults (i.e., settings)
let K_PLAY_SOUND_ON_ANSWER = "playSoundOnAnswer"
let K_PLAY_SOUND_ON_START_NEXT = "playSoundOnStartNext"

class SettingsViewController: UIViewController {

    @IBOutlet weak var playSoundOnStartNextSwitch: UISwitch!
    @IBOutlet weak var playSoundOnAnswerSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Get the value o fuser defaults and set controls accordingly
        playSoundOnAnswerSwitch.on =  NSUserDefaults.standardUserDefaults().boolForKey(K_PLAY_SOUND_ON_ANSWER)
        playSoundOnStartNextSwitch.on =  NSUserDefaults.standardUserDefaults().boolForKey(K_PLAY_SOUND_ON_START_NEXT)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onDone(sender: AnyObject) {
        if((self.presentingViewController) != nil){

            // Just preserve the settings whether edited or not
            NSUserDefaults.standardUserDefaults().setBool(playSoundOnAnswerSwitch.on, forKey: K_PLAY_SOUND_ON_ANSWER)
            NSUserDefaults.standardUserDefaults().setBool(playSoundOnStartNextSwitch.on, forKey: K_PLAY_SOUND_ON_START_NEXT)
            NSUserDefaults.standardUserDefaults().synchronize()

            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
