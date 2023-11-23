//
//  MushroomDateRowView.swift
//  MushroomID
//
//  Created by MushroomTeam on 21/11/23.
//

import SwiftUI

struct MushroomRowView: View {
    
    var rowName: String
    var data: [Mushroom]
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading) {
                
                Text(rowName)
                    .font(.headline)
                    .bold()
                    .foregroundColor(Color("TextGray"))
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(data.sorted(by: { $1.name > $0.name })) { item in
                            MushroomView(mushroomModel: item)
                        }
                    }
                }

                
            }
            
        }
        .frame(height: 200)// TODO: calculate it from geometry reader later
        .padding(.bottom)
        
    }
    
}

struct MushroomRowView_Previews: PreviewProvider {
    static var previews: some View {
        MushroomRowView(rowName: "All", data: CollectionViewModel().allMushrooms)
    }
}