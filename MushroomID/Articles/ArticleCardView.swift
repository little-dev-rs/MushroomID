//
//  ArticleCardView.swift
//  MushroomID
//
//  Created by MushroomTeam on 20/11/23.
//

import SwiftUI


struct ArticleCardView: View {
    
    var article: Article
    
    var body: some View {

        ZStack(alignment: .bottomLeading) {
            
            Image(article.backgroundImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
        
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)

            VStack {
                
                Text(article.title)
                    .font(.title3)
                    .bold()
            }
            .foregroundStyle(.white) // 15 OS
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height: 200)
    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
