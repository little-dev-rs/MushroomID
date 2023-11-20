//
//  ArticlesViewModel.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import Foundation

public class ArticlesViewModel {
    
    let articles: [Article] = [
        .init(title: "How to cook", backgroundImageName: "Articles/mushroom1"),
        .init(title: "Where to find ", backgroundImageName: "Articles/mushroom2"),
        .init(title: "Top 10 mushrooms for soup", backgroundImageName: "Articles/mushroom3"),
        .init(title: "The most expensive truffle in the world", backgroundImageName: "Articles/mushroom4"),
        .init(title: "Список самых редких грибов", backgroundImageName: "Articles/mushroom5"),
        .init(title: "Еще одна статья", backgroundImageName: "Articles/mushroom6"),
    ]
    
    let navigationTitle: String = "Articles"

}
