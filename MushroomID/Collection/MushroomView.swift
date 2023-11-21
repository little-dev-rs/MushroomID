//
//  MushroomView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct MushroomView: View {
    
    var mushroomModel: Mushroom

    var body: some View {

        ZStack(alignment: .bottomLeading) {
            
            Image(mushroomModel.imageName )
                .resizable()
                .aspectRatio(1.0, contentMode: .fill)
                .clipped()
        
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)

            VStack {
                
                Text(mushroomModel.name)
                    .font(.subheadline) // .title3
                    .bold()
            }
            .foregroundStyle(.white) // 15 OS
            .padding()
        }
        .aspectRatio(1.0, contentMode: .fit)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
}

struct MushroomView_Previews: PreviewProvider {
    static var previews: some View {
        MushroomView(mushroomModel: CollectionViewModel().allMushrooms.first!)
    }
}
