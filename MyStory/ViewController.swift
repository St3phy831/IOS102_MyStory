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
    
    let aboutMe = ContextItem(title: "About Me", image: UIImage(named: "family")!, text: "Hello! I'm Nezuko Kamado. I'm the second oldest of 5 siblings. I used to live on the mountain until my family was attacked and killed by a demon. My brother and I were the only survivors, but I had turned into a demon. Now, I travel alongside him as a Demon Slayer protecting humans while he looks for a way to turn me human again. :)")
    let abilities = ContextItem(title: "Abilities", image: UIImage(named: "demon")!, text: "Some of my ablities as a demon are immense regeneration, immense strength, size alteration, blood manipulation, and sunlight resistance.")
    let funFact = ContextItem(title: "Fun Fact", image: UIImage(named: "nezuko_happy")!, text: "I was 12 years old when I turned into a demon, and my birthday is December 28th. Woohoo!")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func btnWasTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedBtn = sender as? UIButton,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedBtn.tag == 0 {
                detailViewController.info = aboutMe
            } else if tappedBtn.tag == 1 {
                detailViewController.info = abilities
            } else if tappedBtn.tag == 2 {
                detailViewController.info = funFact
            } else {
                print("no button was tapped, please check your selection.")
            }
        }
    }
}

