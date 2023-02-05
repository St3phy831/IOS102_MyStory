//
//  DetailViewController.swift
//  MyStory
//
//  Created by Stephanie Hernandez on 1/31/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var info: ContextItem?
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var nezukoImage: UIImageView!
    @IBOutlet weak var detailText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailText.lineBreakMode = .byWordWrapping
        detailText.numberOfLines = 0
        
        if let contextItem = info {
            print(contextItem.title)
            detailTitle.text = contextItem.title
            nezukoImage.image = contextItem.image
            detailText.text = contextItem.text
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
