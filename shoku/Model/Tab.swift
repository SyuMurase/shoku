//
//  Tab.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/01/19.
//

import SwiftUI

struct Tab: Identifiable {
    var id = UUID() . uuidString
    var tab : String
    var foods: [Food]
    }

    var tabsItems = [
        
    Tab(tab: "Moku Moku", foods: foods.shuffled ()) ,
//    Tab(tab: "Picked For You", foods: foods.shuffled ()),
//    Tab (tab: "Starters", foods: foods.shuffled()),
//    Tab(tab: "Gimpub Sushi", foods: foods.shuffled()),
]
