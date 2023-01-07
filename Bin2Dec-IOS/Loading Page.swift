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
    
    @State var color = "Loading"
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color(.black))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            VStack{
                
                    Button(action: {}) {
                        Image(systemName: "star.circle")
                            .foregroundColor(Color(color))
                            .font(.system(size: 90))
                            .rotationEffect(.degrees(isAnimated ? 360 : 0))
                            .animation(
                                .easeInOut(duration: 1.3)
                                .repeatForever(autoreverses: false),
                                value: isAnimated)
                    }
                Text("")
                NavigationLink (destination: ContentView()) {
                    Text ("Valeu Natalina!")
                        .foregroundColor(Color.gray)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color.white)
                }
                     
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

