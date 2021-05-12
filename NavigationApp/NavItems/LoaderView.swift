//
//  LoaderView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-10.
//

import SwiftUI
struct LoaderView: View {
   @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            Text("Example screen")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            
            if isLoading {
                
                ZStack{
                    Color(.systemBackground)
                        .ignoresSafeArea()
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)                }
                
                ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .red))
                .scaleEffect(3)
            }
        }
        .onAppear { startFakeNetworkCall() }
    }
    
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ){
            isLoading = false
        }
    }
}
struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
      
    }
}
