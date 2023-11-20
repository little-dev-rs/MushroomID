//
//  CollectionView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

enum CollectionType: String, CaseIterable {
    case mine = "My collection"
    case all = "All"
}

struct CollectionView: View {

    @ObservedObject var viewModel = CollectionViewModel()
    @State private var selectedSegment: CollectionType = .mine

    var body: some View {
        NavigationView {
            VStack {
                Picker("", selection: $selectedSegment) {
                    ForEach(CollectionType.allCases, id: \.self) { segment in
                        Text(segment.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(viewModel.getData(for: selectedSegment), id: \.self) { item in
                            MushroomView(mushroomModel: item)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Mushrooms")
            
        }

    }

}

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

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
