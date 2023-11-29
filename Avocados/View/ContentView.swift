//
//  ContentView.swift
//  Avocados
//
//  Created by Kasthuri Tandavarayane on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var body: some View {
       
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 20) {
              ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                  ForEach(headers) { item in
                    HeaderView(header: item)
                  }
                }
              }
              Text("Avocado Dishes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
              
              DishesView()
                  .frame(maxWidth: 640)
              
              Text("Avocado Facts")
                .fontWeight(.bold)
                .modifier(TitleModifier())
              
              ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 60) {
                  ForEach(facts) { item in
                    FactsView(fact: item)
                  }
                }
                .padding(.vertical)
                .padding(.leading, 60)
                .padding(.trailing, 20)
              }
              VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                  .fontWeight(.bold)
                 // .modifier(TitleModifier())
                Text("Everything you wanted to know about avocados but were too afraid to ask.")
                  .font(.system(.body, design: .serif))
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color.gray)
                  .frame(minHeight: 60)
              }
              .frame(maxWidth: 640)
              .padding()
              .padding(.bottom, 85)
            }
          }
          .edgesIgnoringSafeArea(.all)
          .padding(0)
    }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}
#Preview {
    ContentView()
}