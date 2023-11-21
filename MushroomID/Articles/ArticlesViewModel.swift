//
//  ArticlesViewModel.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import Foundation

public class ArticlesViewModel {
    
    let articles: [Article] = [
        .init(title: "Top-10 mushrooms to cook a soup", backgroundImageName: "Articles/mushroom2"),
        .init(title: "Where to find white mushroom", backgroundImageName: "Articles/mushroom7"),
        .init(title: "History of Amanita muscaria", backgroundImageName: "Articles/mushroom5"),
        .init(title: "List of rare mushrooms", backgroundImageName: "Articles/mushroom3"),
        .init(title: "One more mushroom", backgroundImageName: "Articles/mushroom1"),
    ]
    
    let navigationTitle: String = "Articles"

}
