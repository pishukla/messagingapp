//
//  messageListViewController.swift
//  messagingapp
//
//  Created by Piyush Shukla on 2018-05-24.
//  Copyright © 2018 Piyush Shukla. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class messageListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var ref: DatabaseReference!
    
    var messages: [String] = []
    
    @IBOutlet weak var messageListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messageListTableView.delegate = self
        messageListTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ref = Database.database().reference()
        
        ref.child("messages").observe(DataEventType.value, with: {(snapshot) in
            self.messages.removeAll()
            
            let dictionary = snapshot.value as? [String: Any]
            
            dictionary?.forEach({(arg) in
                let (key, value) = arg
                self.messages.append(value as! String)
            })
            
            self.messageListTableView.reloadData()

        })
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath)
        cell.textLabel?.text = messages[indexPath.row]
        return cell
    }
    
    @IBAction func addPressed(_ sender: Any) {
        let messageEditorScreen = self.storyboard?.instantiateViewController(withIdentifier: "messageEditor")
        self.present(messageEditorScreen!, animated: true, completion: nil)
    }
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

