//
//  Article.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import Foundation

struct Article: Identifiable {

    let id = UUID()
    var title: String
    var backgroundImageName: String

}
