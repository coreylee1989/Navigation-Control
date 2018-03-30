//
//  FacultyDetailViewController.swift
//  Lee_Assignment2
//
//  Created by Corey on 2/25/17.
//  Copyright © 2017 Corey Lee. All rights reserved.
//

import UIKit

class FacultyDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var facultyNameLabel: UILabel!
    
    @IBOutlet weak var bioTextView: UITextView!
    
    var facultyMember:Faculty?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let facultyMember = facultyMember {
            imageView.image = UIImage(named: facultyMember.userName.lowercased() + ".jpg")
            facultyNameLabel.text = facultyMember.title + " " + facultyMember.firstName + " " + facultyMember.lastName
            bioTextView.text = facultyMember.bio
            self.title = facultyMember.title + " " + facultyMember.lastName
            resignFirstResponder()
            
        }
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let dest = segue.destination as! WebViewController
        if let userName = facultyMember?.userName {
            dest.facultyUserName = userName
        }
    }

}
