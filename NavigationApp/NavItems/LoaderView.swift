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
            
            ReductedView()
               
            
            if isLoading {
                
                ZStack{
                    Color(.systemBackground)
                        .ignoresSafeArea()
                        .opacity(0.8)                }
                
                ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .red))
                .scaleEffect(3)
            }
        }
        .navigationTitle("Profile")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button{
                    print("Save content")
                } label: {
                    Label("Save", systemImage: "square.and.arrow.down")
                }
                Button{
                    print("Clear content")
                } label: {
                    Label("Clear", systemImage: "circle.lefthalf.fill")
                }
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
