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

    let myModel = AppDelegate.myModel
    
    @IBOutlet weak var p2LBL: UILabel!

    @IBAction func p2RockBTN(_ sender: UIButton) {
        p2LBL.text = "ROCK"
        myModel?.choosePlayer2(pick: .Rock)
    }
    @IBAction func p2PaperBTN(_ sender: UIButton) {
        p2LBL.text = "PAPER"
        myModel?.choosePlayer2(pick: .Paper)
    }
    @IBAction func p2ScissorsBTN(_ sender: UIButton) {
        p2LBL.text = "SCISSORS"
        myModel?.choosePlayer2(pick: .Scissors)
    }
}

