//
//  Faculty.swift
//  Lee_Assignment2
//
//  Created by Corey on 2/22/17.
//  Copyright © 2017 Corey Lee. All rights reserved.
//

import Foundation

class Faculty {
    
    var userName:String
    var middleName:String
    var degree:String
    var firstName:String
    var lastName:String
    var title:String
    var bio:String
    
    init (userName: String, middleName: String, degree: String, firstName: String, lastName: String, title: String, bio: String) {
        self.userName = userName
        self.middleName = middleName
        self.degree = degree
        self.firstName = firstName
        self.lastName = lastName
        self.title = title
        self.bio = bio
    }
    
    // convenience init for JSON...
    
    convenience init(dict: [String:String]) {
        if let userName = dict["userName"],
            let middleName = dict["middleName"],
            let degree = dict["degree"],
            let firstName = dict["firstName"],
            let lastName = dict["lastName"],
            let title = dict["title"],
            let bio = dict["bio"] {
            self.init (userName: userName, middleName: middleName, degree: degree, firstName: firstName, lastName: lastName, title: title, bio: bio)
        } else {
            self.init (userName: "", middleName: "", degree: "", firstName: "", lastName: "", title: "", bio: "")
        }
    }
    
}
