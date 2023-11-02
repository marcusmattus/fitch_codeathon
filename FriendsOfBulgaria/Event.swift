//
//  Event.swift
//  FriendsOfBulgaria
//
//  Created by Anish Kochhar on 02/11/2023.
//

import Foundation

struct Event: Identifiable {
    
    var id: Int
    var name: String
    var price: String
    var timeStart: String
    var timeEnd: String
    var location: String
    var date: (Int, String)

}
