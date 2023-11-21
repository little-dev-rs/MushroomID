//
//  Date.swift
//  MushroomID
//
//  Created by MushroomTeam on 21/11/23.
//

import Foundation

extension Date {

    var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date()
    }

    var twoDaysAgo: Date {
        return Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date()
    }

    var threeDaysAgo: Date {
        return Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date()
    }
    
    func formattedDescription() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM"
        return dateFormatter.string(from: self)
    }

    func isSameDay(as otherDate: Date) -> Bool {
        let calendar = Calendar.current
        let components1 = calendar.dateComponents([.year, .month, .day], from: self)
        let components2 = calendar.dateComponents([.year, .month, .day], from: otherDate)

        return components1.year == components2.year &&
               components1.month == components2.month &&
               components1.day == components2.day
    }
    
}
