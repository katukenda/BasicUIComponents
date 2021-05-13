//
//  ReductedView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-13.
//

import SwiftUI
struct ReductedView: View {
  
    @State private var isLoading = false
    
    var body: some View {
        
        VStack {
            Image("profile")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                
            Text("Janitha Prashd")
                .font(.title)
                .bold()
            
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                HStack{
                    Image(systemName: "envelope")
                        .unredacted()
                    Text("katukenda@icloud.com")
                }
                HStack{
                    Image(systemName: "phone")
                        .unredacted()
                    Text("071122345")
                }
                HStack{
                    Image(systemName: "network")
                        .unredacted()
                    Link(destination: URL(string: "https://katukenda.netlify.app")!, label: {
                        Text("My Website")
                        
                    })
                    
                    
                }
            }
            
            Spacer()
            Button(action: {
                print("Profile Updated")
            }, label: {
                Text("Update Profile")
                    .font(.title2)
                    .frame(width: 250, height: 40)
                    
                    .foregroundColor(.white)
                    .background(Color.red)
                
            })
            .cornerRadius(10)
            
            Spacer()
        }
        
        .frame(width: 300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .onAppear { reductedNetworkCall()}
        .redacted(reason: isLoading ? .placeholder: [])
        
    }
    
    
    
    func reductedNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ){
            isLoading = false
        }
    }
}





struct ReductedView_Previews: PreviewProvider {
    static var previews: some View {
        ReductedView()
            .preferredColorScheme(.light)
      
    }
}
