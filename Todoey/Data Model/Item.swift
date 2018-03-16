//
//  Item.swift
//  
//
//  Created by Nguyen Tam Anh Bui on 2/10/18.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
