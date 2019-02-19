//
//  QuoteTableViewController.swift
//  QuotesApp
//
//  Created by Michael Miles on 2/14/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class QuoteTableViewController: UITableViewController {
    
    var quotes = QuoteArray().list
    
    var selectedAuthor = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Quotes"
        
        filterResultsByAuthor()
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quotes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quoteCell", for: indexPath) as! QuoteTableViewCell
        
        cell.quoteLabel.text = quotes[indexPath.row].quoteText
        
        return cell
    }
    
    func filterResultsByAuthor() {
        quotes = quotes.filter { (Quote) -> Bool in
            Quote.authorName.contains(selectedAuthor)
        }
    }

}
