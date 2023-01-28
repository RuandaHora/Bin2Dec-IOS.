//
//  Test.swift
//  Bin2Dec-IOS
//
//  Created by Marcelo Hora on 28/01/23.
//

import SwiftUI

struct Test: View {
    
    @State private var binaryInput = ""
    
    var body: some View {
        VStack {
            TextField("Enter binary number", text: $binaryInput)
                .keyboardType(.numberPad)
            Text("Decimal equivalent: \(binaryToDecimal(binary: binaryInput))")
        }
    }
    func binaryToDecimal(binary: String) -> Int {
        return Int(strtoul(binary, nil, 2))
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
