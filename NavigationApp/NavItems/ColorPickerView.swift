//
//  ColorPickerView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-13.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State private var slectedColor: Color = .red
    var body: some View {
        
        VStack{
            
            Circle()
                .foregroundColor(slectedColor)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Form {ColorPicker("Change Circle Color", selection: $slectedColor)}
        }
        
        
        
    }
}

struct ColorPickerView_Preview: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
