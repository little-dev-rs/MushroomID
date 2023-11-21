//
//  TabBarIcon.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    let width: CGFloat
    let height: CGFloat
    let image: Image
    let tabBarName: String
    
    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabBarName)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .colorMultiply(viewRouter.currentPage == assignedPage ? Color("DarkPurple") : .gray)
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("DarkPurple") : .gray)
    }
}
