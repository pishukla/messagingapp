//
//  messageEditorViewController.swift
//  messagingapp
//
//  Created by Piyush Shukla on 2018-05-24.
//  Copyright © 2018 Piyush Shukla. All rights reserved.
//

import Foundation
import UIKit

class messageEditorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBOutlet weak var postMessage: UITextField!
    
    @IBAction func postButton(_ sender: Any) {
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
