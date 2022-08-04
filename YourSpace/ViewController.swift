//
//  ViewController.swift
//  YourSpace
//
//  Created by nox vanjoff-smith on 2022-08-02.
//

import UIKit

class ViewController: UIViewController {



   
    @IBOutlet weak var linkButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        linkButton.addTarget(self,action:#selector(openLink),for: .touchUpInside)
    
    }


    
    @objc func openLink() {
        // If let only runs the code inside if it can succesfuly unwrap the optional URL object.
        
        if let urlToOpen = URL(string: "https://docs.google.com/document/d/14Yfux5rvEwWyHPjlm7CODSblTQcYWkzF-V0fBoaHYMQ/edit?usp=sharing") {
            // Open the URL in the preferred browser
            UIApplication.shared.open(urlToOpen,options: [:]) { (done) in
                
                
                print("Link was opened succesfully")

            }
            
            
        }
    }
}


