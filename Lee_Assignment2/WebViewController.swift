//
//  WebViewController.swift
//  Lee_Assignment2
//
//  Created by Corey on 2/25/17.
//  Copyright © 2017 Corey Lee. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var facultyUserName:String!
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let str = "http://cec.nova.edu/~" + facultyUserName
        
        if let url = URL(string: str) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
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
