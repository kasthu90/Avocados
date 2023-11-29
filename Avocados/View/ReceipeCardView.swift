//
//  ReceipeCardView.swift
//  Avocados
//
//  Created by Kasthuri Tandavarayane on 29/11/2023.
//

import SwiftUI


struct ReceipeCardView: View {
    var receipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image(receipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(receipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                Text(receipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
            }
            .padding()
            .padding(.bottom, 12)
        }
    }
}
#Preview {
    ReceipeCardView(receipe: recipesData[0] )
}
