//
//  AddingNewReceipeViewController.swift
//  Cooking book
//
//  Created by Oleh on 1/24/21.
//  Copyright © 2021 Oleh. All rights reserved.
//

import UIKit

class AddingNewReceipeViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!
    
    let repository = ReceipeRepository.sharedRepository
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
   
    
    @IBAction func onSaveClicked(_ sender: Any) {
        if let text = textFieldName.text {
            repository.createReceipt(name: text, description: "my description", amount: 777)
        }
        
        for recept in repository.getAllRecepies() {
            
            print("Name \(recept.name) descr \(recept.descript) amount \(recept.amount)")
            
        }
    }
    
    
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
}
    


