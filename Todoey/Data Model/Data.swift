//
//  Data.swift
//  Todoey
//
//  Created by Nguyen Tam Anh Bui on 2/10/18.
//  Copyright © 2018 Nguyen Tam Anh Bui. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
