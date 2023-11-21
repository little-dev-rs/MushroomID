//
//  MushroomDateCollectionView.swift
//  MushroomID
//
//  Created by MushroomTeam on 21/11/23.
//

import SwiftUI

struct MushroomDateCollectionView: View {
    
    // Constants
    
    var data: [MyMushroom]
    
    var body: some View {

        VStack {
            // Row for Today
            let todaysData = data.filter({ $0.dateFound.isSameDay(as: Date())})
            MushroomDateRowView(rowName: "Today".uppercased(), data: todaysData.map({ $0.mushroom }))
            
            // Row for Yesterday
            let yesterdaysData = data.filter({ $0.dateFound.isSameDay(as: Date().yesterday)})
            MushroomDateRowView(rowName: "Yesterday".uppercased(), data: yesterdaysData.map({ $0.mushroom }))
            
            // Separate rows for other dates
            let filteredData = data.filter { dateItem in
                let itemDateStartOfDay = Calendar.current.startOfDay(for: dateItem.dateFound)
                let yesterdayStartOfDay = Calendar.current.startOfDay(for: Date().yesterday)
                return itemDateStartOfDay < yesterdayStartOfDay
            }
            
            let groupedData = Dictionary(grouping: filteredData, by: { $0.dateFound })
            
            // здесь просто перебираем дни
            ForEach(groupedData.keys.sorted(by: { $1 < $0 }), id: \.self) { oldDate in
                let mushroomsForSpecificDate = groupedData[oldDate] ?? []
                let arr = mushroomsForSpecificDate.map({ $0.mushroom })
                MushroomDateRowView(rowName: oldDate.formattedDescription(), data: arr)
            }

        }
        .padding()

    }
    
}

struct MushroomDateCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        MushroomDateCollectionView(data: CollectionViewModel().myMushrooms)
    }
}
