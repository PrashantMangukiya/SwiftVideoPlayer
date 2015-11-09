//
//  ViewController.swift
//  SwiftVideoPlayer
//
//  Created by Prashant on 08/11/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController, AVPlayerViewControllerDelegate {

    
    
    // action - choose video button
    @IBAction func chooseVideoButtonAction(sender: UIButton) {
        self.performSegueWithIdentifier("seguePlayVideo", sender: self)
    }
    
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Navigation function

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "seguePlayVideo" {
            
            // get destination view controller
            let destVc = segue.destinationViewController as! AVPlayerViewController
            
            // create video url ( url added soon..)
            let videoUrl = NSURL(string: "http://www.website.com/video-file.mov")
            
            // set player with url
            destVc.player = AVPlayer(URL: videoUrl!)
        }
        
    }
    
    
    
}

