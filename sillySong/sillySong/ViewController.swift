//
//  ViewController.swift
//  sillySong
//
//  Created by Lucas Cotta on 2/8/17.
//  Copyright © 2017 Talem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInsert: UITextField!
    @IBOutlet weak var songLyrics: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameInsert.delegate = self
    }

    //
    //function to shortener the name
    func nameShortener(_ name: String) -> String {
        
        //
        //no accents or uppercase allowed. After getting the range index of the first vowel, the function trim the name from indexStart to there.
        let nameShortVersion = name.lowercased().folding(options: .diacriticInsensitive, locale: .current)
        let vowelSet = CharacterSet(charactersIn: "aeiou")
        let range = nameShortVersion.rangeOfCharacter(from: vowelSet)
        return nameShortVersion.substring(from: range!.lowerBound)
    }
    
    //
    //function to replace the general names with the short and full name within the lyrics
    func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
        let shortName = nameShortener(fullName)
        
        let finalSong = lyricsTemplate
            .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
            .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
        
        return finalSong
    }

    @IBAction func generate(_ sender: Any) {
        //
        //threatening case of a empty the name field. The str.text is a native optional
        guard let name = nameInsert.text, !(nameInsert.text!.isEmpty) else {
            
            //
            //alert message in case of an empty name field, ok button and showing on the screen
            let alert = UIAlertController(title: "Error", message: "Please insert a name", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        //
        //generating the song
        songLyrics.text! = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: name)
    }
    
    //
    //reset the whole screen
    @IBAction func reset(_ sender: Any) {
        nameInsert.text! = ""
        songLyrics.text! = ""
    }
    
    //
    //template
    let bananaFanaTemplate = [
        "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
        "Banana Fana Fo F<SHORT_NAME>",
        "Me My Mo M<SHORT_NAME>",
        "<FULL_NAME>"].joined(separator: "\n")
}

//
//Changing "return" button of the keyboard to "Done", generating the lyrics, and hidding the keyboard just after.
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.returnKeyType = .go
        textField.resignFirstResponder()
        return false
    }
}



