//
//  GeneralView.swift
//  Bin2Dec-IOS
//
//  Created by Marcelo Hora on 07/01/23.
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        NavigationView {
            Loadingpage()
        }
        NavigationView{
            
            ContentView();
            
        }
        
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
