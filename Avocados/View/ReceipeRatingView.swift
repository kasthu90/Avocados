//
//  ReceipeRatingView.swift
//  Avocados
//
//  Created by Kasthuri Tandavarayane on 29/11/2023.
//

import SwiftUI

struct ReceipeRatingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
          ForEach(1...(recipe.rating), id: \.self) { _ in
            Image(systemName: "star.fill")
              .font(.body)
              .foregroundColor(Color.yellow)
          }
        }
    }
}

#Preview {
    ReceipeRatingView( recipe: recipesData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
