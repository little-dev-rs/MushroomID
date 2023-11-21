//
//  CollectionViewModel.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import Foundation

public class CollectionViewModel: ObservableObject {

    let navigationTitle: String = "Collection"

    let myCollectionTitle: String = "My Collection"
    let allMushroomsTitle: String = "All mushrooms"

    let myMushrooms: [MyMushroom] = [ .init(mushroom:
                                                
                                                Mushroom(name: "Agaricus bisporus",
                                                         description: "Common mushroom",
                                                         edibility: .edible,
                                                         toxicity: .nonToxic,
                                                         imageName: "Agaricus_bisporus",
                                                         habitat: "Grasslands",
                                                         season: .spring,
                                                         growingConditions: ["Rich soil", "Moderate humidity"],
                                                         similarSpecies: ["Agaricus campestris", "Agaricus arvensis"],
                                                         symbolism: "No specific symbolism"),
                                            
                                            dateFound: Date()),
                                      
                                      .init(mushroom:
                                                Mushroom(name: "Amanita muscaria",
                                                         description: "Fly agaric",
                                                         edibility: .inedible,
                                                         toxicity: .poisonous,
                                                         imageName: "Amanita_muscaria",
                                                         habitat: "Coniferous and deciduous forests",
                                                         season: .autumn,
                                                         growingConditions: ["Under birch trees", "Humus-rich soil"],
                                                         similarSpecies: ["Amanita pantherina", "Amanita gemmata"],
                                                         symbolism: "Symbol of fairy tales"),
                                            
                                            dateFound: Date().yesterday),
                                      .init(mushroom:
                                                
                                                Mushroom(name: "Boletus edulis",
                                                         description: "Porcini mushroom",
                                                         edibility: .edible,
                                                         toxicity: .nonToxic,
                                                         imageName: "Boletus_edulis",
                                                         habitat: "Mixed woodlands",
                                                         season: .summer,
                                                         growingConditions: ["Under pine trees", "Symbiotic with certain trees"],
                                                         similarSpecies: ["Boletus pinophilus", "Boletus badius"],
                                                         symbolism: "High culinary value"),
                                            
                                            dateFound: Date().yesterday),
                                      
                                      .init(mushroom:
                                                
                                                Mushroom(name: "Cantharellus cibarius",
                                                         description: "Chanterelle",
                                                         edibility: .edible,
                                                         toxicity: .nonToxic,
                                                         imageName: "Cantharellus_cibarius",
                                                         habitat: "Coniferous and deciduous forests",
                                                         season: .summer,
                                                         growingConditions: ["Moist soil", "Under hardwoods"],
                                                         similarSpecies: ["Cantharellus tubaeformis", "Cantharellus formosus"],
                                                         symbolism: "Symbol of good luck"),
                                            
                                            dateFound: Date().twoDaysAgo),
                                      
                                      .init(mushroom:
                                                
                                                Mushroom(name: "Cantharellus cibarius",
                                                         description: "Chanterelle",
                                                         edibility: .edible,
                                                         toxicity: .nonToxic,
                                                         imageName: "Cantharellus_cibarius",
                                                         habitat: "Coniferous and deciduous forests",
                                                         season: .summer,
                                                         growingConditions: ["Moist soil", "Under hardwoods"],
                                                         similarSpecies: ["Cantharellus tubaeformis", "Cantharellus formosus"],
                                                         symbolism: "Symbol of good luck"),
                                            
                                            dateFound: Date().yesterday),
                                      
                                      .init(mushroom:
                                                
                                                Mushroom(name: "Hypholoma fasciculare",
                                                         description: "Sulfur tuft",
                                                         edibility: .inedible,
                                                         toxicity: .poisonous,
                                                         imageName: "Articles/mushroom2",
                                                         habitat: "Woodlands",
                                                         season: .autumn,
                                                         growingConditions: ["Dead wood", "Gregarious growth"],
                                                         similarSpecies: ["Hypholoma capnoides", "Hypholoma sublateritium"],
                                                         symbolism: "No specific symbolism"),
                                            
                                            dateFound: Date().threeDaysAgo)
    ].sorted { ($0.dateFound) > ($1.dateFound) }

    let allMushrooms: [Mushroom] = [
        Mushroom(name: "Agaricus bisporus",
                 description: "Common mushroom",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Agaricus_bisporus",
                 habitat: "Grasslands",
                 season: .spring,
                 growingConditions: ["Rich soil", "Moderate humidity"],
                 similarSpecies: ["Agaricus campestris", "Agaricus arvensis"],
                 symbolism: "No specific symbolism"),
        
        Mushroom(name: "Amanita muscaria",
                 description: "Fly agaric",
                 edibility: .inedible,
                 toxicity: .poisonous,
                 imageName: "Amanita_muscaria",
                 habitat: "Coniferous and deciduous forests",
                 season: .autumn,
                 growingConditions: ["Under birch trees", "Humus-rich soil"],
                 similarSpecies: ["Amanita pantherina", "Amanita gemmata"],
                 symbolism: "Symbol of fairy tales"),
        
        Mushroom(name: "Boletus edulis",
                 description: "Porcini mushroom",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Boletus_edulis",
                 habitat: "Mixed woodlands",
                 season: .summer,
                 growingConditions: ["Under pine trees", "Symbiotic with certain trees"],
                 similarSpecies: ["Boletus pinophilus", "Boletus badius"],
                 symbolism: "High culinary value"),
        
        Mushroom(name: "Cantharellus cibarius",
                 description: "Chanterelle",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Cantharellus_cibarius",
                 habitat: "Coniferous and deciduous forests",
                 season: .summer,
                 growingConditions: ["Moist soil", "Under hardwoods"],
                 similarSpecies: ["Cantharellus tubaeformis", "Cantharellus formosus"],
                 symbolism: "Symbol of good luck"),
        
        Mushroom(name: "Coprinus comatus",
                 description: "Shaggy mane",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Articles/mushroom1",
                 habitat: "Grassy areas",
                 season: .spring,
                 growingConditions: ["Rich soil", "Open areas"],
                 similarSpecies: ["Coprinopsis atramentaria", "Coprinellus micaceus"],
                 symbolism: "Delicate and short-lived"),
        
        Mushroom(name: "Hypholoma fasciculare",
                 description: "Sulfur tuft",
                 edibility: .inedible,
                 toxicity: .poisonous,
                 imageName: "Articles/mushroom2",
                 habitat: "Woodlands",
                 season: .autumn,
                 growingConditions: ["Dead wood", "Gregarious growth"],
                 similarSpecies: ["Hypholoma capnoides", "Hypholoma sublateritium"],
                 symbolism: "No specific symbolism"),
        
        Mushroom(name: "Lactarius deliciosus",
                 description: "Saffron milk cap",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Articles/mushroom3",
                 habitat: "Coniferous and deciduous forests",
                 season: .autumn,
                 growingConditions: ["Symbiotic with certain trees", "Mycorrhizal"],
                 similarSpecies: ["Lactarius sanguifluus", "Lactarius deterrimus"],
                 symbolism: "Symbol of the fall"),
        
        Mushroom(name: "Morchella esculenta",
                 description: "Morel",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Articles/mushroom4",
                 habitat: "Woodlands",
                 season: .spring,
                 growingConditions: ["Burn sites", "Nutrient-rich soil"],
                 similarSpecies: ["Morchella elata", "Morchella angusticeps"],
                 symbolism: "Rare and prized"),
        
        Mushroom(name: "Russula emetica",
                 description: "The Sickener",
                 edibility: .inedible,
                 toxicity: .poisonous,
                 imageName: "Articles/mushroom5",
                 habitat: "Mixed woodlands",
                 season: .summer,
                 growingConditions: ["Under birch trees", "Mycorrhizal"],
                 similarSpecies: ["Russula claroflava", "Russula cremoricolor"],
                 symbolism: "No specific symbolism"),
        
        Mushroom(name: "Tricholoma matsutake",
                 description: "Matsutake",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "Articles/mushroom1",
                 habitat: "Coniferous forests",
                 season: .autumn,
                 growingConditions: ["Symbiotic with certain trees", "Mycorrhizal"],
                 similarSpecies: ["Tricholoma magnivelare", "Tricholoma caligatum"],
                 symbolism: "Highly esteemed in Japanese cuisine"),
        
        Mushroom(name: "Entoloma hochstetteri",
                 description: "Blue mushroom",
                 edibility: .inedible,
                 toxicity: .nonToxic,
                 imageName: "mushroom11",
                 habitat: "Grasslands",
                 season: .summer,
                 growingConditions: ["Damp soil", "Grassy areas"],
                 similarSpecies: ["Entoloma quadratum", "Entoloma abortivum"],
                 symbolism: "No specific symbolism"),
        
        Mushroom(name: "Phallus impudicus",
                 description: "Common stinkhorn",
                 edibility: .inedible,
                 toxicity: .nonToxic,
                 imageName: "mushroom12",
                 habitat: "Woodlands",
                 season: .summer,
                 growingConditions: ["Decaying wood", "Humid areas"],
                 similarSpecies: ["Mutinus elegans", "Dictyophora duplicata"],
                 symbolism: "Unpleasant odor"),
        
        Mushroom(name: "Clitocybe nuda",
                 description: "Wood blewit",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "mushroom13",
                 habitat: "Woodlands",
                 season: .autumn,
                 growingConditions: ["Leaf litter", "Rich soil"],
                 similarSpecies: ["Clitocybe gibba", "Clitocybe geotropa"],
                 symbolism: "Mild flavor"),
        
        Mushroom(name: "Cordyceps militaris",
                 description: "Caterpillar fungus",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "mushroom14",
                 habitat: "Forest floor",
                 season: .summer,
                 growingConditions: ["Insect host", "High humidity"],
                 similarSpecies: ["Cordyceps sinensis", "Cordyceps ophioglossoides"],
                 symbolism: "Traditional Chinese medicine"),
        
        Mushroom(name: "Ramaria stricta",
                 description: "Upright coral fungus",
                 edibility: .inedible,
                 toxicity: .nonToxic,
                 imageName: "mushroom15",
                 habitat: "Coniferous forests",
                 season: .summer,
                 growingConditions: ["Well-drained soil", "Mycorrhizal"],
                 similarSpecies: ["Ramaria botrytis", "Ramaria flava"],
                 symbolism: "Coral-like appearance"),
        
        Mushroom(name: "Psilocybe cubensis",
                 description: "Golden teacher",
                 edibility: .hallucinogenic,
                 toxicity: .nonToxic,
                 imageName: "mushroom16",
                 habitat: "Grassy areas",
                 season: .summer,
                 growingConditions: ["Dung-enriched soil", "Warm and humid"],
                 similarSpecies: ["Psilocybe semilanceata", "Psilocybe cyanescens"],
                 symbolism: "Psychedelic properties"),
        
        Mushroom(name: "Hericium erinaceus",
                 description: "Lion's mane",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "mushroom17",
                 habitat: "Hardwood forests",
                 season: .autumn,
                 growingConditions: ["Dead wood", "Saprophytic"],
                 similarSpecies: ["Hericium americanum", "Hericium coralloides"],
                 symbolism: "Neuroprotective properties"),
        
        Mushroom(name: "Termitomyces titanicus",
                 description: "Termite mushroom",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "mushroom18",
                 habitat: "Termite mounds",
                 season: .summer,
                 growingConditions: ["Termite-inhabited areas", "Tropical climates"],
                 similarSpecies: ["Termitomyces microcarpus", "Termitomyces robustus"],
                 symbolism: "Culturally significant in some regions"),
        
        Mushroom(name: "Geastrum triplex",
                 description: "Collared earthstar",
                 edibility: .inedible,
                 toxicity: .nonToxic,
                 imageName: "mushroom19",
                 habitat: "Grassy areas",
                 season: .autumn,
                 growingConditions: ["Well-drained soil", "Open areas"],
                 similarSpecies: ["Geastrum saccatum", "Geastrum fimbriatum"],
                 symbolism: "Unique appearance"),
        
        Mushroom(name: "Tuber magnatum",
                 description: "White truffle",
                 edibility: .edible,
                 toxicity: .nonToxic,
                 imageName: "mushroom20",
                 habitat: "Symbiotic with tree roots",
                 season: .autumn,
                 growingConditions: ["Calcium-rich soil", "Mycorrhizal"],
                 similarSpecies: ["Tuber melanosporum", "Tuber aestivum"],
                 symbolism: "Highly prized in culinary world")
    ]
    
}

