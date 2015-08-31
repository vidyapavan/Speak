//
//  ViewController.swift
//  Speak
//
//  Created by Vidya Pavan on 5/20/15.
//  Copyright (c) 2015 vidyapavan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var textView: UITextView!
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")

    @IBAction func textToSpeech(sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.3
        //myUtterance.voice
        synth.speakUtterance(myUtterance)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

