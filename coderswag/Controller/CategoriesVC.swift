//
//  ViewController.swift
//  coderswag
//
//  Created by Petros Antoniou on 22/10/2018.
//  Copyright © 2018 Petros Antoniou. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        
    //when you add the 'UITableViewDataSource' and the 'UITableViewDelegate' protocols to the VC, xcode will ask you to add the two functions below because they are required by the protocols.
    //This function asks to return the number of rows in your table.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //we count the amount of rows by counting the amount of 'categories' that the 'dataService' is servicing
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
            
        } else {
            return CategoryCell()
            
        }
        
    }

}

