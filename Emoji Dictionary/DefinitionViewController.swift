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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiSpot.text = emoji.stringEmoji
        emojiDesc.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        birthYearLabel.text = "Birth Year: \(emoji.birthYear)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
