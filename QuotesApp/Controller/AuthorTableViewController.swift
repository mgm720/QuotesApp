//
//  AuthorTableViewController.swift
//  QuotesApp
//
//  Created by Michael Miles on 2/18/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class AuthorTableViewController: UITableViewController {
    
    var array = QuoteArray().list

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateArray()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "authorCell", for: indexPath)

        cell.textLabel?.text = array[indexPath.row].authorName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToQuote", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! QuoteTableViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedAuthor = array[indexPath.row].authorName
            
            print(array[indexPath.row].authorName)
        }
        // Pass the selected object to the new view controller.
    }

    func updateArray() {
        array = Array(Set(array))
        
        array = array.sorted { $0.authorName < $1.authorName }
    }
}
