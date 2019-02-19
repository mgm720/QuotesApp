//
//  QuoteArray.swift
//  QuotesApp
//
//  Created by Michael Miles on 2/15/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import Foundation

class QuoteArray {
    var list = [Quote]()
    
    init() {
        list.append(Quote(text: "I'll be back", author: "Arnold Schwartzenegger"))
        
        list.append(Quote(text: "Yo", author: "YoGuy"))
    }
}
