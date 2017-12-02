//
//  MainViewController.swift
//  TapperGame
//
//  Created by Zahid  on 2.12.2017.
//  Copyright © 2017 Zahid Efe. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // variables
    var totalTap: Int = 0;
    let maximumNumber: UInt32 = 20
    
    var maximumValue: Int!
    
    // IBOutlet
    @IBOutlet weak var yaziAlani: UILabel!
    @IBOutlet weak var buton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // Funcs
    func updateText() {
        yaziAlani.text = "\(totalTap) Tık!"
    }
    
    func startGame() {
        totalTap = 0
        maximumValue = Int(arc4random_uniform(maximumNumber))
        print(maximumValue)
        buton.isHidden = false
        restartButton.isHidden = true
        updateText()
    }
    
    // IBActions
    @IBAction func buton(_ sender: UIButton) {
        totalTap = totalTap + 1
        updateText()
        
        if totalTap == maximumValue {
            yaziAlani.text = "Yeter artık!"
            buton.isHidden = true
            restartButton.isHidden = false
        }
    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        startGame()
    }
    

}
