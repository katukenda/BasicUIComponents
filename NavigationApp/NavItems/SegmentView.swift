//
//  SegmentView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-13.
//

import SwiftUI

struct  SegmentView: View {

    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .yellow
        UISegmentedControl.appearance().setTitleTextAttributes( [.foregroundColor : UIColor.black], for: .selected)
    }
    
    @State private var selectedView: selectedViewNumber = .one
    
    var body: some View {
        
            NavigationView {
                VStack{
                    Picker("Choose a View", selection: $selectedView){
                        ForEach(selectedViewNumber.allCases, id: \.self){
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    Spacer()
                    ChoseeView(selectedView: selectedView)
                    Spacer()
                    
                }
                .navigationTitle("Choose a view")
                
                
            }
               
            
            
    
        
    }
    
}


enum selectedViewNumber: String, CaseIterable {
    case one = "blue"
    case two = "green"
    case three = "red"
}


struct ChoseeView: View {
    
    var selectedView: selectedViewNumber
    
    var body: some View{
        switch selectedView {
        case .one:
            SegmentMainView(backColor: .red, slideName: "First")
        case .two:
            SegmentMainView(backColor: .green, slideName: "Second")
        case .three:
            SegmentMainView(backColor: .blue, slideName: "Thired")
        }
    }
    
}


struct  SegmentMainView: View {
    
    var backColor: Color
    var slideName: String
    
    var body: some View {
        
        ZStack{
        
            Text("Janitha \(slideName)")
                .foregroundColor(backColor)
        }
        .navigationTitle("\(slideName) View")
        
        
    }
}




struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView()
            .preferredColorScheme(.dark)
          
        
      
    }
}
