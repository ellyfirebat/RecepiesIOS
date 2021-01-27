//
//  ListViewController.swift
//  Cooking book
//
//  Created by Oleh on 1/27/21.
//  Copyright © 2021 Oleh. All rights reserved.
//

import Foundation
import UIKit
class ListViewController:ViewController , UITableViewDelegate,UITableViewDataSource{
    var recepies:[Recepe] = []
    @IBOutlet weak var tvRecepies: UITableView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        tvRecepies.dataSource = self
        tvRecepies.delegate = self
           if let filepath = Bundle.main.path(forResource: "receipt1", ofType: "json") {
                      do {
                          let contents = try String(contentsOfFile: filepath)
                         
                          let decoder = JSONDecoder()
                          recepies = try decoder.decode([Recepe].self, from: contents.data(using: .utf8)! )
                        tvRecepies.reloadData()
                        
                      } catch {
                          // contents could not be loaded
                      }
                  } else {
                      // example.txt not found!
                  }
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recepies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recepieCell = tableView.dequeueReusableCell(withIdentifier: "recepieCell") as! RecepieCell
        
        let item = recepies[indexPath.row]
        
        
        let imageData = Data.init(base64Encoded: item.mainImage, options: .init(rawValue: 0))
        recepieCell.ivMain.image =  UIImage(data: imageData!)
        recepieCell.lblTitle.text = item.name
        recepieCell.lblDescription.text = item.description
        return recepieCell
    }
    
    
    
   
    
    
    
    
    @IBAction func onBackPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
