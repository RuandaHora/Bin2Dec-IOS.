// Conversor.swift
//  Converter Binario para decimal
//  Created by Ruan da Hora on 28/12/22.

import SwiftUI

struct ContentView: View {
    
    //Variaveis
    
    @State var crescendo = 1.0
    @State var result = "10"
    @State var teste = "10"
    
    var body: some View {
        
        
        VStack {
            HStack{
                Text("Binary to Decimal Converter")
                    .font(.headline)
            }
            VStack (alignment: .leading,  spacing: 0) {
                HStack{
                    
                    Text(result)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        .background(Color.gray)
                        .cornerRadius(10)
                    
                   
                    Image(systemName: "r.circle")
                        .foregroundColor(.black)
                }
                VStack (alignment: .leading,  spacing: 0) {
                    HStack{
                        
                        Text(teste)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Image(systemName: "u.circle")
                            .foregroundColor(.black)
                    }
                }
                VStack (alignment: .leading,  spacing: 0) {
                    HStack{
                        
                        Text(teste)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Image(systemName: "a.circle")
                            .foregroundColor(.black)
                    }
                }
                VStack (alignment: .leading,  spacing: 0) {
                    HStack{
                        
                        Text(teste)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Image(systemName: "n.circle")
                            .foregroundColor(.black)
                    }
                }
                
            }
            Spacer()
            HStack{
                Text("Enter a binary number: ")
                    .font(.headline)
                    .scaleEffect(crescendo)
                    .animation(
                    Animation
                        .easeIn(duration: 3)
                        .repeatCount(3)
                        .delay(1))
            }
            Spacer()
            Spacer()
            HStack{
                Button("by Ruan da Hora"){
                    
                    
                }
                .foregroundColor(Color.white)
                .padding(1)
                .background(Color.orange)
                .cornerRadius(10)
                .scaleEffect(crescendo)
                .animation(
                Animation
                    .easeIn(duration: 3)
                    .repeatCount(3)
                    .delay(2)
                )
            }
            .onAppear{
                self.crescendo -= 0.1
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
