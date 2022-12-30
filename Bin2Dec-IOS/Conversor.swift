// Conversor.swift
//  Converter Binario para decimal
//  Created by Ruan da Hora on 28/12/22.

import SwiftUI

struct ContentView: View {
    
    //Variaveis
    
    @State var crescendo = 1.0
    @State var result = "10"
    @State var teste = "10"
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        
        VStack {
            HStack{
                Text("Binary to Decimal Converter")
                    .font(.headline)
            }
            HStack{
                TextField("Binario", text: self.$email)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .opacity(40)
                
                Image("back")
                    
                    .padding()
                    .cornerRadius(10)
                    .opacity(10)
                    
            }
            HStack{
                TextField("Decimal", text: self.$password)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                
                Image("copy")
                    .padding()
                    .cornerRadius(10)
                    .opacity(10)
            }
            HStack{
                Text("Enter a binary number: ")
                    .font(.headline)
            }
            
            HStack{
                Button("Convert"){
                    
                }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
            
            Spacer()
            HStack{
                Button("by Ruan da Hora"){
                    
                    
                }
                .foregroundColor(Color.white)
                .padding(1)
                .background(Color.blue)
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
