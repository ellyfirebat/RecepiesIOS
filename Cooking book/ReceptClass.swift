//
//  ReceptClass.swift
//  Cooking book
//
//  Created by Oleh on 9/8/20.
//  Copyright © 2020 Oleh. All rights reserved.
//

import Foundation

import UIKit

struct Ingridient :Decodable{
    var name:String
    var ammount:String
    var unit:String
}

struct Step :Decodable{
    var image:String
    var description:String
}

struct Recepe :Decodable{
//    var image : UIImage
    var ingridients : [Ingridient]
    var steps: [Step]
    var mainImage:String
    var name:String
    var description:String
}


