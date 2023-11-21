//
//  ContentView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    
    private enum Constants {
        static let searchImageName: String = "camera.circle.fill"
        static let collectionTabName: String = "Collection"
        static let collectionTabImageName: String = "mushroom"
        static let articlesTabName: String = "Articles"
        static let articlesTabImageName: String = "articles"
        static let searchButtonColor: Color = Color("DarkPurple")
        static let tabBarBackgroundColor: Color = Color("TabBarBackground")
    }

    @StateObject var viewRouter: ViewRouter
    @State var showPopup = false
    
    @State private var isShowingCamera = false
    @State private var capturedImage: UIImage?

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
                    HStack {
                        Spacer()
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter,
                                   assignedPage: .collection,
                                   width: geometry.size.width / 5,
                                   height: geometry.size.height / 28,
                                   image: Image(Constants.collectionTabImageName),
                                   tabBarName: Constants.collectionTabName)
                        Spacer()
                        
                        CustomSearchView(width: geometry.size.width,
                                         height: geometry.size.height,
                                         iconName: Constants.searchImageName,
                                         color: Constants.searchButtonColor)
                        .onTapGesture {
                            withAnimation {
                                isShowingCamera = true
                            }
                        }
                        .sheet(isPresented: $isShowingCamera) {
                            CameraView(isShowingCamera: $isShowingCamera, capturedImage: $capturedImage)
                        }
                        
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter,
                                   assignedPage: .articles,
                                   width: geometry.size.width / 5,
                                   height: geometry.size.height / 28,
                                   image: Image(Constants.articlesTabImageName),
//                                   image: Image(systemName: Constants.articlesTabImageName),
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
