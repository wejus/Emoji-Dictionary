//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by William Schoettler on 9/7/17.
//  Copyright © 2017 William Schoettler. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiSpot: UILabel!
    @IBOutlet weak var emojiDesc: UILabel!
    
    var emoji = "NO EMOJI"
    var emojiName = "NO NAME"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiSpot.text = emoji
        emojiDesc.text = emojiName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
