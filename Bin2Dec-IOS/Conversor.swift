// Conversor.swift
//  Converter Binario para decimal
//  Created by Ruan da Hora on 28/12/22.

import SwiftUI

struct ContentView: View {
    
    //Variaveis
    
    @State var crescendo = 1.0
    @State var result = "10"
    @State var teste = "10"
     //Variavel privada (
     //@State private var email = ""
     //@State private var password = "")
    @State  var email = ""
    @State  var password = ""
    @State var numero1 = ""
    @State var numero2 = ""
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
            .fill(Color("CustomColor"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack {
                HStack{
                    Text("                                                            ")
                    Button(action: {}) {
                        Image(systemName:"moon.circle")
                            .foregroundColor(.primary)
                            .font(.system(size: 20))
                    }
                }
                HStack{
                    Text("Binary to Decimal Converter")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("                               ")
                }
                HStack{
                    TextField("Binario", text: self.$email)
                        .foregroundColor(Color.black)
                        .frame(width: 280, height: 35)
                        .background(Color("CustomColor"))
                        .cornerRadius(5)
                    
                    Button(action: {}) {
                        Image("back")
                        
                            .frame(width: 75, height: 30)
                            .background(Color("Icones"))
                            .cornerRadius(5)
                    }
                }
                HStack{
                    TextField("Decimal", text: self.$password)
                        .foregroundColor(.black)
                        .frame(width: 280, height: 35)
                        .background(Color("CustomColor"))
                        .cornerRadius(5)
                    
                    Button(action: {}) {
                        Image("copy")
                        
                            .frame(width: 75, height: 30)
                            .background(Color("Icones"))
                            .cornerRadius(5)
                    }
                    
                }
                HStack{
                    Text("Enter a binary number: ")
                        .font(.headline)
                        .foregroundColor(.primary)
                }
                
                HStack{
                    
                    TextField("0", text: self.$numero1)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 70, height: 30)
                        .background(Color("Color"))
                        .cornerRadius(5)
                    
                }
                HStack{
                    
                    TextField("0", text: self.$numero2)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 70, height: 30)
                        .background(Color("Color"))
                        .cornerRadius(5)
                    
                }
                HStack{
                    Button(action: {}) {
                        
                        Text("Convert")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }
                }
                
                Spacer()
                HStack{
                    Button(action: {}) {
                        Text("by Ruan da Hora")
                            .foregroundColor(Color.white)
                            .padding(1)
                            .background(Color("Color"))
                            .cornerRadius(10)
                            .scaleEffect(crescendo)
                            .animation(
                                Animation
                                    .easeIn(duration: 3)
                                    .repeatCount(3)
                                    .delay(2))
                    }
                }
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
