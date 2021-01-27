//
//  ReceipeViewController.swift
//  Cooking book
//
//  Created by Oleh on 9/8/20.
//  Copyright © 2020 Oleh. All rights reserved.
//

import Foundation
import UIKit
class ReceipeViewController: ViewController {
    
    @IBOutlet weak var dessertView: UIImageView!
    
    @IBOutlet weak var bakingView: UIImageView!
    
    @IBOutlet weak var soupView: UIImageView!
    
    @IBOutlet weak var saladView: UIImageView!
    
    @IBOutlet weak var maindishesView: UIImageView!
    
    @IBOutlet weak var meatView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create tap gesture recognizer
        
        let tapGestureMeat = UITapGestureRecognizer(target: self, action: #selector(ReceipeViewController.meatTapped(gesture:)))
              meatView.addGestureRecognizer(tapGestureMeat)
              meatView.isUserInteractionEnabled = true
        
        
        
        let tapGestureDessert = UITapGestureRecognizer(target: self, action: #selector(ReceipeViewController.dessertTapped(gesture:)))
          dessertView.addGestureRecognizer(tapGestureDessert)
          dessertView.isUserInteractionEnabled = true
        
        
        let tapGestureMainiDishes = UITapGestureRecognizer(target: self, action: #selector(ReceipeViewController.maindishesTapped(gesture:)))
           maindishesView.addGestureRecognizer(tapGestureMainiDishes)
           maindishesView.isUserInteractionEnabled = true
        
        
        let tapGestureSalad = UITapGestureRecognizer(target: self, action: #selector(ReceipeViewController.saladTapped(gesture:)))
           saladView.addGestureRecognizer(tapGestureSalad)
           saladView.isUserInteractionEnabled = true
        
        
        let tapGestureSoup = UITapGestureRecognizer(target: self, action: #selector(ReceipeViewController.soupTapped(gesture:)))
           soupView.isUserInteractionEnabled = true
           soupView.addGestureRecognizer(tapGestureSoup)
        
        
        let tapGestureBaking = UITapGestureRecognizer(target: self, action: #selector(ReceipeViewController.bakingTapped(gesture:)))
           bakingView.addGestureRecognizer(tapGestureBaking)
           bakingView.isUserInteractionEnabled = true
        // make sure imageView can be interacted with by user
    }
        @objc func dessertTapped(gesture: UIGestureRecognizer) {
                print("Dessert Tapped")
            
            performSegue(withIdentifier: "recepieList", sender: nil)
        }
        @objc func meatTapped(gesture: UIGestureRecognizer) {
                print("Meat Tapped")
        }
        @objc func maindishesTapped(gesture: UIGestureRecognizer) {
                print("Main Dishese Tapped")
        }
        @objc func saladTapped(gesture: UIGestureRecognizer) {
                print("Salad Tapped")
        }
        @objc func soupTapped(gesture: UIGestureRecognizer) {
                print("Soup Tapped")
        }
        @objc func bakingTapped(gesture: UIGestureRecognizer) {
                print("Baking Tapped")
        }
    

@IBAction func onBackPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

    
    

