//
//  ViewController.swift
//  messagingapp
//
//  Created by Piyush Shukla on 2018-05-24.
//  Copyright © 2018 Piyush Shukla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginPressed(_ sender: Any) {
        let messagelistScreen = self.storyboard?.instantiateViewController(withIdentifier: "messageList")
        self.present(messagelistScreen!, animated: true, completion: nil)
    }
    
}

