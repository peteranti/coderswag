//
//  DataService.swift
//  coderswag
//
//  Created by Petros Antoniou on 22/10/2018.
//  Copyright © 2018 Petros Antoniou. All rights reserved.
//

import Foundation

//'SERVICES' because it will take the template and fill it in with the data we want


class DataService {
    //a 'static let' means that 'DataService' can only be stored ONCE. We want this because it will hold all the data we need for our table. We create an instance called 'instance' and make it of type 'Data Service'. THIS IS CALLED A SINGLETON
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        ]
    
    func getCategories() -> [Category]{
        return categories
        
    }
}
