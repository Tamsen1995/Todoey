//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Nguyen Tam Anh Bui on 3/18/18.
//  Copyright © 2018 Nguyen Tam Anh Bui. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // TableView Datasource methods
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! SwipeTableViewCell
        cell.textLabel?.text = categories?[indexPath.row].name ?? "No Categories added yet."
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") {
            action, indexPath in
            
            
            //            if let category = self.categories?[indexPath.row] {
            //                do {
            //                    try self.realm.write {
            //                        self.realm.delete(category)
            //                    }
            //                } catch {
            //                    print ("Error deleting category")
            //                }
            //            }
            
            print("Delete Cell")
            
        }
        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        return options
    }
    
}


