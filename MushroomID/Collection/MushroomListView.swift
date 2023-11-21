//
//  MushroomListView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct MushroomListView: View {
    
    var data: [Mushroom]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
            ForEach(data, id: \.self) { item in
                MushroomView(mushroomModel: item)
            }
        }
        .padding()
    }
    
}

struct MushroomListView_Previews: PreviewProvider {
    static var previews: some View {
        MushroomListView(data: [Mushroom(name: "while mush",
                                         description: "",
                                         edibility: .edible,
                                         toxicity: .nonToxic,
                                         imageName: "",
                                         habitat: "somewhere",
                                         season: .spring,
                                         growingConditions: ["Wet whether"],
                                         similarSpecies: ["black"],
                                         symbolism: "no symbols")])
    }
}
