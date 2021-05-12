//
//  MainTabView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-09.
//

import Foundation
import SwiftUI

struct MainTabView: View {
    
   
    
    var body: some View {
        TabView {
            DailyCashView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("home")
                }
            CryptoView()
                .tabItem {
                    Image(systemName: "bitcoinsign.circle.fill")
                    Text("Crypto")
                }
            
            StoickView()
                .tabItem {
                    Image(systemName: "square.grid.3x3.topright.fill")
                    Text("Stock")
                }
        }
        
    }
    
}


struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
      
    }
}
