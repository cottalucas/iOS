//
//  RecordViewController.swift
//  pitchPerfect
//
//  Created by Lucas Cotta on 2/11/17.
//  Copyright © 2017 Talem. All rights reserved.
//

import UIKit
import AVFoundation

class RecordViewController: UIViewController, AVAudioRecorderDelegate {
    
    @IBOutlet weak var messageOnScreen: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var audioRecorded: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    //record button by tapping, not holding.
    @IBAction func record(_ sender: Any) {
        stopButton.isEnabled = true
        recordButton.isEnabled = false
        messageOnScreen.text = "Recording.."
        
        //
        //defining the dir path and filename
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        
        //
        //the final file path used by the record() method
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        //
        //create a session (singleton) that indicates that the application needs to use the shared audio behaviour
        let session = AVAudioSession.sharedInstance()
        
        //
        //defining the session category of the recording. In this case, the recording method will be through the phone speakers. E.g.: Headset microphones won't capture the audio
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        //
        //instantiation of the AVAudioRecorder class with the required file path and settings
        try! audioRecorded = AVAudioRecorder(url: filePath!, settings: [:])
        
        //
        //enable to get the audio in (dBs) preparing to record and recording
        audioRecorded.delegate = self
        audioRecorded.isMeteringEnabled = true
        audioRecorded.prepareToRecord()
        audioRecorded.record()
    }
    
    //
    // stop recording
    @IBAction func stopRecording(_ sender: Any){
        stopButton.isEnabled = false
        recordButton.isEnabled = true
        messageOnScreen.text = "Tap to record"
        
        //
        //stop recording itself
        audioRecorded.stop()
        
        //
        //accessing and ending the session to acess the shared audio behaviours
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: audioRecorded.url)
        } else {
            //
            //in case of any problem in the recording a message will inform the user with an alert message
            let alert = UIAlertController(title: "Error", message: "Recording unsucessful", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    //
    //before the segue is triggered the record audio file need to be prepared to be send after the segue be called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "stopRecording"{
            let playSoundsVC = segue.destination as! PlaySoundsViewController
            let recordedAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recordedAudioURL
        }
   }
    
}
