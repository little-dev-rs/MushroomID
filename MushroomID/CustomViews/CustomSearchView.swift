//
//  CustomSearchView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct CustomSearchView: View {

    let width: CGFloat
    let height: CGFloat
    let iconName: String
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: width / 6, height: height / 6)
                .shadow(radius: 4)
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width / 6 - 6,
                       height: height / 6 - 6)
                .foregroundColor(color)
        }
        .offset(y: -height / 8 / 2)
    }

}
