//
//  SecondViewController.swift
//  RPS-Eloe
//
//  Created by Eloe,Wendy C on 2/19/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.myModel.player2Choice == .None {
            p2LBL.text = "Make a Choice"
        }
        else {
            p2LBL.text = "Selection made: \(AppDelegate.myModel.player2Choice)"
        }
    }
    
    @IBOutlet weak var p2LBL: UILabel!

    @IBAction func p2RockBTN(_ sender: UIButton) {
        p2LBL.text = "ROCK"
        AppDelegate.myModel.choosePlayer2(pick: .Rock)
    }
    @IBAction func p2PaperBTN(_ sender: UIButton) {
        p2LBL.text = "PAPER"
        AppDelegate.myModel.choosePlayer2(pick: .Paper)
    }
    @IBAction func p2ScissorsBTN(_ sender: UIButton) {
        p2LBL.text = "SCISSORS"
        AppDelegate.myModel.choosePlayer2(pick: .Scissors)
    }
}

