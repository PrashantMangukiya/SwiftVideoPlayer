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

    
    // url for playing video
    var videoUrl: NSURL!
    
    
    // action - play local video
    @IBAction func playLocalVideo(sender: UIButton) {
        
        // create video url from local resource (i.e video stored within project folder)
        self.videoUrl = NSBundle.mainBundle().URLForResource("sample", withExtension: "mov")!
        
        // perform segue
        self.performSegueWithIdentifier("seguePlayVideo", sender: self)
    }

    // action - play remote video
    @IBAction func playRemoteVideo(sender: UIButton) {
        
        // create video url form remote location (i.e. video stored at domain etc.)
        self.videoUrl = NSURL(string: "http://download.prashantmangukiya.com/SwiftVideoPlayer-Data/Big_Buck_Bunny_Trailer.m4v")

        // perform segue
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
            
            // set player
            destVc.player = AVPlayer(URL: self.videoUrl)
        }
        
    }
    
    
}

