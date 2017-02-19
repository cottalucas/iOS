//
//  PlaySoundsViewController.swift
//  pitchPerfect
//
//  Created by Lucas Cotta on 2/16/17.
//  Copyright © 2017 Talem. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        //setting up the engine
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    //
    //this variable will contain the url (path file) sent from RecordViewController after the audio is recorded and properly stoped and stored.
    var recordedAudioURL: URL!
    
    //additional needs from AVAudioEngine class
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, lowPitch, highPitch, echo, reverb
    }

    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var lowPitchButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    //
    //to avoid code duplication lets create actions to play the sounds and one action to stop
    @IBAction func playSound(_ sender: UIButton){
        switch (ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .lowPitch:
            playSound(pitch: 1000)
        case .highPitch:
            playSound(pitch: -1500)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
        
    }
    
    @IBAction func stopSound(_ sender: AnyObject){
        stopAudio()
    }

}
