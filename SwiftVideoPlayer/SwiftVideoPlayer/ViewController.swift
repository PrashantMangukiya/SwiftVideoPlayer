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

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "seguePlayVideo" {

            
        }
        
    }
    
    
    
}

