//
//  ViewController.swift
//  Livin'Green_Round_2
//
//  Created by Apple on 6/26/19.
//  Copyright © 2019 Citlally Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🚘": "YesQ1", "🚫": "NoQ1", "✅" : "YesQ2", "✖️" : "NoQ2", "👍" : "YesQ3", "👎" : "NoQ3", "♻️" : "YesQ4", "🗑" : "NoQ4", "🛍" : "YesQ5", "❌" : "NoQ5", "💻" : "YesQ6", "📒" : "NoQ6"]
    
    let customMessages = ["YesQ1" : "Good job! Keep at it!", "NoQ1" : "Try catching a ride with a friend!", "YesQ2" : "Keep fillin' em up!", "NoQ2" : "Make the switch!", "YesQ3" : "Yes, queen!", "NoQ3" : "It's not as icky as you think... Try it!", "YesQ4" : "Keep it green!", "NoQ4" : "Girl, let's find a place to start. Check out our tips page for more!", "YesQ5" : "Yeah, let's go shopping!", "NoQ5" : "Let's hop on that train, get a SWAG bag!" ,  "YesQ6" : "Yes, we LOVE a tech queen!", "NoQ6" : "Let's use those electronics!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel!.text!
        let emojiMessage = customMessages[emojis[selectedEmotion]!]
        let alertController = UIAlertController(title:"Alert", message:emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
   


}

