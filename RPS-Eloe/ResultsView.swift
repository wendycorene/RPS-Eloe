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
    

    @IBOutlet weak var resetLBL: UILabel!
    let myModel = AppDelegate.myModel

    @IBAction func resetBTN(_ sender: UIButton) {
        myModel?.reset()
        resetLBL.text = "You have reset"
    }
    
    @IBAction func resultsBTN(_ sender: UIButton) {
        resetLBL.text = myModel?.winner()
    }
}
