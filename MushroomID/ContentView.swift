//
//  ContentView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    
    private enum Constants {
        static let searchImageName: String = "magnifyingglass.circle.fill"
        static let collectionTabName: String = "Collection"
        static let collectionTabImageName: String = "tree"// "camera.macro" TODO: create custom mushroom image
        static let articlesTabName: String = "Articles"
        static let articlesTabImageName: String = "book"// "book.fill"
        static let searchButtonColor: Color = Color("DarkPurple")
        static let tabBarBackgroundColor: Color = Color("TabBarBackground")
    }

    @StateObject var viewRouter: ViewRouter
    @State var showPopup = false

    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
    
                Spacer()
                
                switch viewRouter.currentPage {
                case .collection:
                    CollectionView()
                case .articles:
                    ArticlesView()
                }

                Spacer()
                
                ZStack {
                    if showPopup {
//                        PlusMenu()
                    }
                    HStack {
                        Spacer()
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter,
                                   assignedPage: .collection,
                                   width: geometry.size.width / 5,
                                   height: geometry.size.height / 28,
                                   systemIconName: Constants.collectionTabImageName,
                                   tabBarName: Constants.collectionTabName)
                        Spacer()
                        
                        CustomSearchView(width: geometry.size.width,
                                         height: geometry.size.height,
                                         iconName: Constants.searchImageName,
                                         color: Constants.searchButtonColor)
                        .onTapGesture {
                            withAnimation {
                                showPopup.toggle()
                            }
                        }
                        
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter,
                                   assignedPage: .articles,
                                   width: geometry.size.width / 5,
                                   height: geometry.size.height / 28,
                                   systemIconName: Constants.articlesTabImageName,
                                   tabBarName: Constants.articlesTabName)
                        Spacer()
                        Spacer()
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height / 8)
                    .background(Constants.tabBarBackgroundColor)
                .shadow(radius: 2)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
