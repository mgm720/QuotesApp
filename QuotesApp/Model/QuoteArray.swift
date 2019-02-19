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
        list.append(Quote(text: "I'll be back", author: "Arnold Schwarzenegger"))
        
        list.append(Quote(text: "Life's most persistent and urgent question is, 'What are you doing for others?'", author: "Martin Luther King Jr."))
        
        list.append(Quote(text: "Be yourself; everyone else is already taken.", author: "Oscar Wilde"))
        
        list.append(Quote(text: "The secret of getting ahead is getting started.", author: "Mark Twain"))
        
        list.append(Quote(text: "It's not the size of the dog in the fight, it's the size of the fight in the dog.", author: "Mark Twain"))
    }
}
