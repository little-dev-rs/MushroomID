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
                .padding(.horizontal)
                ScrollView(.vertical) {
                    if selectedSegment == .mine {
                        // сделать категории по дням когда был найден гриб
                        // выводить горизонтальные row
                        // заменить иконку гриба на таб баре
                        // сгенерить иконку для приложения
                        // нарисовать ланч скрин и добавить в приложение
                        // сделать онбординг на пару скринов
                        // заменить лупу на камеру
                        // хранить данные всех грибов в джейсоне и парсить их
                        // сделать поповер понажатию на камеру
                        // обучить модельку и впихнуть в приложение
                        // войс овер
                        // прeзентация
                        MushroomDateCollectionView(data: viewModel.myMushrooms)
                    } else {
                        MushroomListView(data: viewModel.allMushrooms)
                    }
                }
            }
            .navigationTitle("Mushrooms")
            
        }

    }

}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
