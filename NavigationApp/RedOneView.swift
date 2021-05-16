//
//  ContentView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-08.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView {
            VStack {
               Text("This is home page")
                    .navigationBarTitle("Home Page", displayMode: .inline)
                    .offset(y: -60)
        
                NavigationLink(
                    destination: BlueTwoView(color: .black),
                    label: {
                        navButton(butonName: "Navigation", buttonColor: .green)
                    })

                NavigationLink(
                    destination: DatePickerView()
                        .navigationTitle("Date Picker")
                    ,
                    label: {
                        navButton(butonName: "Date Picker", buttonColor: .blue)
                    })
                NavigationLink(
                    destination: ColorPickerView()
                        .navigationTitle("Color Picker")
                    ,
                    label: {
                        navButton(butonName: "Color Picker", buttonColor: .red)
                    })
                
                NavigationLink(
                    destination: LoaderView()
                        .navigationTitle("Loader")
                    ,
                    label: {
                        navButton(butonName: "Loader", buttonColor: .yellow)
                    })
                NavigationLink(
                    destination: MainTabView()
                        .navigationTitle("Tab View")
                    ,
                    label: {
                        navButton(butonName: "Tab View", buttonColor: .blue)
                    })
                NavigationLink(
                    destination: SegmentView()
                         .navigationTitle("Segment View")
                    ,
                    label: {
                        navButton(butonName: "Segment View", buttonColor: .gray)
                    })
                NavigationLink(
                    destination: FormView()
                        .navigationTitle("Form View")
                    ,
                    label: {
                        navButton(butonName: "Form View", buttonColor: .red)
                    })
            }
        }
        .accentColor(Color(.label))
    }
    
}

struct BlueTwoView: View {
    var color: Color
    var body: some View {
        
        VStack {
            CircleNumberView(color: color, number: 2)
                .navigationTitle("Navigation")
                .offset(y: -60)
            
        }
    }
}


struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
        
    }
    
}






  
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
      
    }
}

struct navButton: View {
    var butonName: String
    var buttonColor: Color
    
    var body: some View {
        Text(butonName)
            .bold()
            .frame(width: 260, height: 50)
            .background(buttonColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}
