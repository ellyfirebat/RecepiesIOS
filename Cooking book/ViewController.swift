//
//  ViewController.swift
//  Cooking book
//
//  Created by Oleh on 8/20/20.
//  Copyright © 2020 Oleh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        // Do any additional setup after loading the view.
    }

    @IBAction func ReceipeBook(_ sender: Any) {
        performSegue(withIdentifier: "receipe_book", sender: nil)
       
    }
    @IBAction func NewReceipe(_ sender: Any) {
        
    }
 
    
    @IBAction func PrintReceipe(_ sender: Any) {
    }
    
    @IBAction func ShoppingList(_ sender: Any) {
    }
    
}

