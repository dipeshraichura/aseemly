//
//  ViewController.swift
//  aseemly
//
//  Created by Dipesh Raichura on 13/10/2015.
//  Copyright © 2015 Dipesh Raichura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func askaseem_button(sender: AnyObject) {
        
        output.text = "";
        
        let arr = [
            "stripe": "Strip shirts are so 90.",
            "shoes" : "She simply does not need more shoes!",
            "brussels" : "Brussels sprouts are so 2010",
            "walk" :   "Should I call an uber? Yes",
            "nap" :    "You always have time for a nap",
            "her" :    "She is the worst",
            "cupcake" : "cupcakes are so last year, but they taste delicious",
            "drink" : "Budlight it's only a 100 Calories",
            "ann" : "yes dear...",
            "unleashed" : "oh fuck no..!"
        ];
        
        let misc = [
            "Its a classic but you can’t pull it off as trending",
            "I stand by that"
        ];
        
        let question = input.text
        for (search_str, response) in arr {
            if let _ = question!.rangeOfString(search_str, options: .RegularExpressionSearch) {
                print(response);
                output.text = response;
            }
            if (output.text!.isEmpty) {
                let magic = Int(arc4random_uniform(2))
                output.text = misc[magic];
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

