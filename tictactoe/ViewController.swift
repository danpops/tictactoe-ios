//
//  ViewController.swift
//  tictactoe
//
//  Created by Dan Popovic on 2021-02-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startBtnClicked(_ sender: UIButton) {
        // ensures user inputs name
        guard !nameField.text!.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        // move to game view
        let controller = storyboard?.instantiateViewController(identifier: "gameScene") as! GameViewController
        
        // set player name
        controller.playerName = nameField.text
        
        // transition effects
        controller.modalTransitionStyle = .flipHorizontal
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
}

