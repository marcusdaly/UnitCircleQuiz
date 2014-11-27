//
//  AboutViewController.swift
//  Unit Circle Quiz
//
//  Created by Rob Daly on 11/25/14.
//  Copyright (c) 2014 Marcus Daly. All rights reserved.
//

import UIKit
import MessageUI

class AboutViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDone(sender: AnyObject) {
        if((self.presentingViewController) != nil){
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }

    @IBAction func emailMe(sender: AnyObject) {
        if (MFMailComposeViewController.canSendMail())
        {
            var mail = MFMailComposeViewController()
            
            mail.mailComposeDelegate = self
            
            mail.setSubject("Unit Circle Quiz - App Feedback")
            mail.setMessageBody("Hi Marcus - \n\n", isHTML: false)
            mail.setToRecipients(["onebuh@gmail.com"])
            
            self.presentViewController(mail, animated:true, completion:nil)
        }
        else
        {
            self.showSendMailErrorAlert()
        }
    }
    
    func showSendMailErrorAlert() {
        var sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

}
