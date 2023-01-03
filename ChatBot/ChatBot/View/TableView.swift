//
//  TableView.swift
//  ChatBot
//
//  Created by Jonas Romankiewicz on 04.12.22.
//

import UIKit
class ViewController: UITableViewController {
 
 let cellId = "cellId"
 var messages : [Message] = [Message]()
override func viewDidLoad() {
 super.viewDidLoad()

 }
    
override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()
 
 }
 
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return messages.count
 }
  
}
