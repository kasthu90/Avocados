//
//  AvocadosView.swift
//  Avocados
//
//  Created by Kasthuri Tandavarayane on 29/11/2023.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulseAnimating: Bool  = false
    var body: some View {
        VStack{
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 0)
                .scaleEffect(self.pulseAnimating ? 1.0 : 0.9)
                .opacity(self.pulseAnimating ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulseAnimating)
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
      Creamy, green, and full of nutrients!
      Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
      """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        } .onAppear(
            perform: {
                self.pulseAnimating.toggle()
            }
        )
        .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        ).edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    AvocadosView()
        .environment(\.colorScheme, .dark)
}
