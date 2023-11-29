//
//  ReceipeCookingView.swift
//  Avocados
//
//  Created by Kasthuri Tandavarayane on 29/11/2023.
//

import SwiftUI

struct ReceipeCookingView: View {
    var recipe: Recipe
    var body: some View {
            HStack(alignment: .center, spacing: 12) {
                HStack(alignment: .center, spacing: 2) {
                    Image(systemName: "person.2")
                    Text("Serves: \(recipe.serves)")
                }
                HStack(alignment: .center, spacing: 2) {
                    Image(systemName: "clock")
                    Text("Prep: \(recipe.preparation)")
                }
                HStack(alignment: .center, spacing: 2) {
                    Image(systemName: "flame")
                    Text("Cooking: \(recipe.cooking)")
                }
            }
            .font(.footnote)
            .foregroundColor(Color.gray)
        }
    }

#Preview {
    ReceipeCookingView(recipe: recipesData[0])
}
