//
//  ViewController.swift
//  MyStory
//
//  Created by Stephanie Hernandez on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aboutMeBtn: UIButton!
    @IBOutlet weak var abilitiesBtn: UIButton!
    @IBOutlet weak var funFactBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func aboutBtnWasTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
}

