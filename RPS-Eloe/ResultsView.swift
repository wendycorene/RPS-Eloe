//
//  ResultsView.swift
//  RPS-Eloe
//
//  Created by Eloe,Wendy C on 2/19/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

class ResultsView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        p1Wins.text = "Player 1 has won \(AppDelegate.myModel.p1WinCount) times"
        p2Wins.text = "Player 2 has won \(AppDelegate.myModel.p2WinCount) times"
        if AppDelegate.myModel.haveResult() {
            player1Selection.text = "Player 1 chose \(AppDelegate.myModel.player1Choice)"
            player2Selection.text = "Player 2 chose \(AppDelegate.myModel.player2Choice)"
        }
        else {
            player1Selection.text = "Make your selection in the other tab"
            player2Selection.text = "Make your selection in the other tab"
        }
        
    }
    
    @IBOutlet weak var player1Selection: UILabel!
    @IBOutlet weak var resetLBL: UILabel!
    @IBOutlet weak var player2Selection: UILabel!
    @IBOutlet weak var p1Wins: UILabel!
    @IBOutlet weak var p2Wins: UILabel!
    
    @IBAction func resetBTN(_ sender: UIButton) {
        AppDelegate.myModel.reset()
        resetLBL.text = "You have reset"
        player1Selection.text = "Make your selection in the other tab"
        player2Selection.text = "Make your selection in the other tab"
    }
    
    @IBAction func resultsBTN(_ sender: UIButton) {
        var winner: String
        winner = AppDelegate.myModel.winner()
        resetLBL.text = winner
        p1Wins.text = "Player 1 has won \(AppDelegate.myModel.p1WinCount) times"
        p2Wins.text = "Player 2 has won \(AppDelegate.myModel.p2WinCount) times"
    }
}
