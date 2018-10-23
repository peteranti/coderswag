//
//  CategoryCell.swift
//  coderswag
//
//  Created by Petros Antoniou on 22/10/2018.
//  Copyright © 2018 Petros Antoniou. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    //we are creating a function that everytime it runs, it will place the current category's title and imgName INTO the cell through their IBOutlets
    func updateViews (category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
