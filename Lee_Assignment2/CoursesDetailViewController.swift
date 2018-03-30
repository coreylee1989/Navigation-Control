//
//  CoursesDetailViewController.swift
//  Lee_Assignment2
//
//  Created by Corey on 2/25/17.
//  Copyright © 2017 Corey Lee. All rights reserved.
//

import UIKit

class CoursesDetailViewController: UIViewController {
    
    @IBOutlet weak var courseNameLabel: UILabel!
    
    @IBOutlet weak var courseTextView: UITextView!
    
    var course:Course?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let course = course {
            courseNameLabel.text = course.name
            courseTextView.text = course.longDesc
            self.title = course.name
            resignFirstResponder()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
