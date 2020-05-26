//
//  Card.swift
//  frantic-guide
//
//  Created by Nadim Salloum on 11.05.20.
//  Copyright © 2020 Nadim Salloum. All rights reserved.
//

import Foundation

class Card {
    let title: String
    let body: String
    let image: String
    let type: CardType
    let set: CardSet
    
    init(title: String, body: String, image: String, type: CardType, set: CardSet) {
        self.title = title
        self.body = body
        self.image = image
        self.type = type
        self.set = set
    }
}

enum CardType: String {
    case HandCard = "Hand Card"
    case EventCard = "Event Card"
    case PowerCard = "Power Card"
}

enum CardSet: String {
    case Base = "Base game"
    case Supercharge = "Supercharge Add-On"
    case Troublemaker = "Troublemaker Add-On"
}

