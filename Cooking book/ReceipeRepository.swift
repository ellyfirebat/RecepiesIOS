//
//  ReceipeRepository.swift
//  Cooking book
//
//  Created by Oleh on 9/11/20.
//  Copyright © 2020 Oleh. All rights reserved.
//

import Foundation

import CoreData

class ReceipeRepository {
    let container:NSPersistentContainer
    init(){
           container = NSPersistentContainer(name: "Receipes")

           container.loadPersistentStores(completionHandler: {
               (storeDescription, error) in
                    print(storeDescription)
               if let  error = error as NSError? {
                   fatalError("Unresolver error\(error), \(error.userInfo)")
               }
           })
    }
    
    static let sharedRepository = ReceipeRepository()
   
    func createReceipt(name:String,description:String,amount:Int32) {
        let newReceipt = Receipes(context: container.viewContext)
        newReceipt.amount = amount
        newReceipt.descript = description
        newReceipt.name = name
        do{
            try container.viewContext.save()
        }catch{}
    }
    
    func getAllRecepies() -> [Receipes]{
        
        do{
            let recepts = try container.viewContext.fetch(Receipes.fetchRequest()) as! [Receipes]
            return recepts
        }catch{
            print("Error")
        }
        return []
    }
}





