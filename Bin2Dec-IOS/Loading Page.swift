//
//  ContentView.swift
//  Converter Binario para decimal
//
//  Created by Ruan da Hora on 28/12/22.
//

import SwiftUI

struct Loadingpage : View {
    
    //Variaveis
    @State var isAnimated = false
    @State var crescendo = 1.0
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
             
            VStack{
                Image(systemName: "star.circle")
                    .foregroundStyle(.white, .tertiary)
                    .font(.system(size: 90))
                    .rotationEffect(.degrees(isAnimated ? 360 : 0))
                    .animation(
                        .easeInOut(duration: 1.3)
                        .repeatForever(autoreverses: false),
                        value: isAnimated)
                Text("")
                
                Button("Valeu Natalina!"){
                    
                }
                    .foregroundColor(Color.gray)
                    .fontDesign(.monospaced)
                    .foregroundColor(Color.white)
                    .scaleEffect(crescendo)
                    .animation(
                    Animation
                        .easeIn(duration: 3)
                        .repeatCount(3)
                    )
                }
                .onAppear{
                    self.crescendo += 0.1
                
            }
            
        }
        .onAppear(perform: {isAnimated = true })
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Loadingpage()
        }
    }
}

