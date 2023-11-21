//
//  MushroomDateRowView.swift
//  MushroomID
//
//  Created by Svetlana Shardakova on 21/11/23.
//

import SwiftUI

struct MushroomDateRowView: View {
    
    var rowName: String
    var data: [Mushroom]
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading) {
                
                Text(rowName)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.gray.opacity(0.5))// TODO: create gray color
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(data) { item in
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

struct MushroomDateRowView_Previews: PreviewProvider {
    static var previews: some View {
        MushroomDateRowView(rowName: "All", data: CollectionViewModel().allMushrooms)
    }
}
