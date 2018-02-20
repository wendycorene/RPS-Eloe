//
//  FirstViewController.swift
//  RPS-Eloe
//
//  Created by Eloe,Wendy C on 2/19/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var p1LBL: UILabel!

    @IBAction func p1RockBTN(_ sender: UIButton) {
        p1LBL.text = "ROCK"
        AppDelegate.myModel.choosePlayer1(pick: .Rock)
    }
    
    @IBAction func p1PaperBTN(_ sender: UIButton) {
        p1LBL.text = "PAPER"
        AppDelegate.myModel.choosePlayer1(pick: .Paper)
    }
    
    @IBAction func p1ScissorsBTN(_ sender: UIButton) {
        p1LBL.text = "SCISSORS"
        AppDelegate.myModel.choosePlayer1(pick: .Scissors)
    }
}

