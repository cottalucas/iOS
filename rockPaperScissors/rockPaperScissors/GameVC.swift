//
//  GameVC.swift
//  rockPaperScissors
//
//  Created by Lucas Cotta on 4/6/17.
//  Copyright © 2017 Talem. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MANUALLY
    @IBAction func rock(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as! ResultVC
        
        controller.userChoice = #imageLiteral(resourceName: "rock")
        
        present(controller, animated: true, completion: nil)
    }
    
    // SEGUE + CODE && SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "play"{
        
            let controller = segue.destination as! ResultVC
            controller.userChoice = #imageLiteral(resourceName: "paper")
        }

    }
    
    @IBAction func paper(_ sender: Any) {
        performSegue(withIdentifier: "play", sender: self)
    }
    
}

