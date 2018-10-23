//
//  Category.swift
//  coderswag
//
//  Created by Petros Antoniou on 22/10/2018.
//  Copyright © 2018 Petros Antoniou. All rights reserved.
//

import Foundation

//'MODEL' because it will act as the blueprint that we can use to create pockets of data
//Create a structure (array) for each category in the table with its TITLE and IMAGETITLE

struct Category {
    // private(set) public var is a variable that can be read from anywhere in the code but can only be set from WITHIN only (i.e. here only)
    private (set) public var title: String
    private (set) public var imageName: String
    
    // we create an init that will run everytime we call this structure. This init will take two values, the title and imageName and then will pass them ONTO the struct. This means that the struct (Category) can be set from outside ONLY when it is firstly created because this init is running here
    init(title: String, imageName: String) {
        //self.title is the title var of the struct. title on the right is the string obtained from the init
        self.title = title
        //self.imageName is the imageName var of the struct. imageName on the right is the string obtained from the init
        self.imageName = imageName
    }
}
