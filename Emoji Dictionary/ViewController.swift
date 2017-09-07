//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by William Schoettler on 9/7/17.
//  Copyright © 2017 William Schoettler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var EmojiTable: UITableView!
    
    var emojis = ["😎","😄","💩","😄","👠","🐹","🐬"]
    var emojiDescriptions = ["Sunglasses","Big Smile","Poop","Big Smile","Shoe","Hamster","Dolphin"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EmojiTable.dataSource = self
        EmojiTable.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = indexPath.row
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        let myIndex = sender as! Int
        defVC.emoji = emojis[myIndex]
        defVC.emojiName = emojiDescriptions[myIndex]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

