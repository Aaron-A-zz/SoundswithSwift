//
//  ViewController.swift
//  Sound
//
//  Created by Mav3r1ck on 10/26/14.
//  Copyright (c) 2014 Mav3r1ck. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("test", ofType: "mp3")!)
        println(alertSound)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

