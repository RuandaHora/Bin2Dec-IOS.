import SwiftUI

struct ContentView: View {
    
    //Variaveis
    
    @State var crescendo = 1.0
    
    @State  var Binary = ""
    @State  var Decimal = ""
    
    
    @State var DarkMode = "CustomColor"
    @State var Ligth = "Ligth"
    @State var Dark =  "Dark"
    
    func dark(){
        RoundedRectangle(cornerRadius: 0)
        .fill(Color(DarkMode))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
    
    func converter () {
        Decimal =  Binary
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
            .fill(Color(DarkMode))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack {
                VStack{
                    HStack{
                        Text("Binary to Decimal Converter")
                            .font(.headline)
                            .foregroundColor(.primary)
                        Spacer()
                    }
                    Divider()
                }
                HStack{
                    TextField("Binario", text: self.$Binary)
                        .foregroundColor(Color.primary)
                        .frame(width: 280, height: 35)
                        .background(Color("CustomColor"))
                        .cornerRadius(5)
                    Button(action: {Binary = ""}) {
                        Image("back")
                        
                            .frame(width: 75, height: 30)
                            .background(Color("Icones"))
                            .cornerRadius(5)
                    }
                }
                HStack{
                    TextField("Decimal", text: self.$Decimal)
                        .foregroundColor(.primary)
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
                VStack{
                    Divider()
                    Text("Enter a binary number:")
                        .font(.headline)
                        .foregroundColor(.primary)
                }
                
                HStack{
                    
                    Button(action: {Binary += "1"}){
                        
                        Text("1")
                        
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 70, height: 30)
                        .background(Color("Color"))
                        .cornerRadius(5)
                    }
                }
                HStack{
                    
                    Button(action: {Binary += "0"}){
                        Text("0")
                        
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 70, height: 30)
                            .background(Color("Color"))
                            .cornerRadius(5)
                    }
                }
    
                HStack{
                    Button(action: {converter()}) {
                      
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

struct ExtractedView: View {
    var body: some View {
        HStack {
            Image(systemName:"moon.circle")
                .foregroundColor(.primary)
            .font(.system(size: 20))
        }
    }
}
