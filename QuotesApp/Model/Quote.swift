//
//  Quote.swift
//  QuotesApp
//
//  Created by Michael Miles on 2/15/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import Foundation

class Quote : Hashable {
    
    let quoteText : String
    let authorName : String
    
    func hash(into hasher: inout Hasher) {
    }
    
    static func == (lhs: Quote, rhs: Quote) -> Bool {
        return lhs.authorName == rhs.authorName
    }
    
    init(text : String, author : String) {
        quoteText = text
        authorName = author
    }
}
