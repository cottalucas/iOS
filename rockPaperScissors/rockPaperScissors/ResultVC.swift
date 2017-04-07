//
//  ResultVC.swift
//  rockPaperScissors
//
//  Created by Lucas Cotta on 4/6/17.
//  Copyright © 2017 Talem. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    
    // MARK: Properties
    
    var userChoice: UIImage!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        display(userChoice: userChoice)
    }
    
    // MARK: AI + UI
    
    func display(userChoice: UIImage){
        
        let options = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "scissors")]
        let AIChoice = Int(arc4random() % 3)
        
        
        switch userChoice {
            
        case #imageLiteral(resourceName: "rock"):
            if options[AIChoice] == #imageLiteral(resourceName: "paper") {
                resultImage.image = #imageLiteral(resourceName: "PaperCoversRock")
                resultText.text = "Paper cover rocks, you lost!"
            } else if options[AIChoice] == #imageLiteral(resourceName: "scissors") {
                resultImage.image = #imageLiteral(resourceName: "RockCrushesScissors")
                resultText.text = "Rock crushes scissors, you won!"
            }
            
        case #imageLiteral(resourceName: "paper"):
            if options[AIChoice] == #imageLiteral(resourceName: "rock") {
                resultImage.image = #imageLiteral(resourceName: "PaperCoversRock")
                resultText.text = "Paper covers rocks, you won!"
            } else if options[AIChoice] == #imageLiteral(resourceName: "scissors") {
                resultImage.image = #imageLiteral(resourceName: "ScissorsCutPaper")
                resultText.text = "Scissors cut paper, you lost!"
            }
            
        case #imageLiteral(resourceName: "scissors"):
            if options[AIChoice] == #imageLiteral(resourceName: "rock") {
                resultImage.image =  #imageLiteral(resourceName: "RockCrushesScissors")
                resultText.text = "Rock crushes scissors, you lost!"
                
            } else if options[AIChoice] == #imageLiteral(resourceName: "paper") {
                resultImage.image =  #imageLiteral(resourceName: "ScissorsCutPaper")
                resultText.text = "Scissors cut paper, you won!"
            }
            
        default: break
            
        }

    }

    // MARK: Actions
    
    @IBAction func playAgain() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
