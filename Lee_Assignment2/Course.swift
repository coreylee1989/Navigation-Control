//
//  Course.swift
//  Lee_Assignment2
//
//  Created by Corey on 2/22/17.
//  Copyright © 2017 Corey Lee. All rights reserved.
//

import Foundation

class Course {
    
    var name:String
    var shortDesc:String
    var longDesc:String
    
    init (name: String, shortDesc: String, longDesc: String) {
        self.name = name
        self.shortDesc = shortDesc
        self.longDesc = longDesc
    }
    
    // convenience init for JSON...
    
    convenience init(dict: [String:String]) {
        if let name = dict["name"],
            let shortDesc = dict["shortDesc"],
            let longDesc = dict["longDesc"] {
            self.init (name: name, shortDesc: shortDesc, longDesc: longDesc)
        } else {
            self.init (name: "", shortDesc: "", longDesc: "")
        }
    }
    
}
