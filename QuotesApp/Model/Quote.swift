//
//  Quote.swift
//  QuotesApp
//
//  Created by Michael Miles on 2/15/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import Foundation

class Quote {
    let quoteText : String
    let authorName : String
    
    init(text : String, author : String) {
        quoteText = text
        authorName = author
    }
}
