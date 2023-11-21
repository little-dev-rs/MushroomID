//
//  Mushroom.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import Foundation

struct MyMushroom: Identifiable {
    let mushroom: Mushroom
    let dateFound: Date
    let id = UUID()
}

enum EdibilityLevel: String {
    case edible = "Съедобный"
    case inedible = "Несъедобный"
    case hallucinogenic = "Галлюциногенный"
}

enum ToxicityLevel: String {
    case nonToxic = "Неядовитый"
    case mildlyPoisonous = "Условно ядовитый"
    case poisonous = "Ядовитый"
    case deadly = "Смертельно ядовитый"
}

enum Season: String {
    case spring = "Весна"
    case summer = "Лето"
    case autumn = "Осень"
    case winter = "Зима"
}

struct Mushroom: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var edibility: EdibilityLevel
    var toxicity: ToxicityLevel
    var imageName: String
    var habitat: String
    var season: Season
    var growingConditions: [String]
    var similarSpecies: [String]
    var symbolism: String
//    var dateFound: Date?
    
    init(name: String,
         description: String,
         edibility: EdibilityLevel,
         toxicity: ToxicityLevel,
         imageName: String,
         habitat: String,
         season: Season,
         growingConditions: [String],
         similarSpecies: [String],
         symbolism: String
//         dateFound: Date? = nil
    ) {
        self.name = name
        self.description = description
        self.edibility = edibility
        self.toxicity = toxicity
        self.imageName = imageName
        self.habitat = habitat
        self.season = season
        self.growingConditions = growingConditions
        self.similarSpecies = similarSpecies
        self.symbolism = symbolism
//        self.dateFound = dateFound
    }
}

extension Mushroom: Hashable {

    // Add a hashValue property
    var hashValue: Int {
        return name.hashValue
    }

    // Implement Equatable protocol
    static func == (lhs: Mushroom, rhs: Mushroom) -> Bool {
        return lhs.name == rhs.name
    }

}
