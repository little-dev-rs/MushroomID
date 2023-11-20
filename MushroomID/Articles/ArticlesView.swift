//
//  ArticlesView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI

struct ArticlesView: View {
    
    let viewModel: ArticlesViewModel = ArticlesViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                ForEach(viewModel.articles) { article in
                    ArticleCardView(article: article)
                        .padding()
                }
            }
            .navigationTitle(viewModel.navigationTitle)
        }

    }
    
}

struct ArticlesView_Previews: PreviewProvider {
    
    static var previews: some View {
        ArticlesView()
    }

}
