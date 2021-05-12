//
//  DatePickerView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-10.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var birthdate  = Date()
    
    var body: some View {
        
        VStack{
            
            Form {
                DatePicker(
                    "Bithday",
                    selection: $birthdate)
                
            }
            Form {
                DatePicker(
                    "Bithday",
                    selection: $birthdate)
                    .datePickerStyle(WheelDatePickerStyle())
            }
            
            Form {
                DatePicker(
                    "Bithday",
                    selection: $birthdate)
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            
            Form {
                DatePicker(
                    "Bithday",
                    selection: $birthdate, in: ...Date(), displayedComponents: .hourAndMinute )
                
            }
            Form {
                DatePicker(
                    "Bithday",
                    selection: $birthdate, in: Date()... )
                
            }
            
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
      
    }
}
