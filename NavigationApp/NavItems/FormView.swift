//
//  FormView.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-16.
//

import SwiftUI 

struct FormView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var BirthDate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 2
    var body: some View {
       
        NavigationView{
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First name", text: $firstName)
                    TextField("First name", text: $lastName)
                    DatePicker("Birth Date", selection : $BirthDate, displayedComponents: .date)
                }
                
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletters", isOn: $shouldSendNewsletter)
                        .toggleStyle((SwitchToggleStyle(tint: .red)))
                    Stepper("Number of likes", value :$numberOfLikes, in: 1...100 )
                        Text("This video has \(numberOfLikes) likes")
                    Link("Terms of Service", destination: URL(string: "https://katukenda.netlify.app")!)
                }
            }
            
            .navigationTitle("Account")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        hideKeyboard()
                    } label: {
                         Image(systemName: "keyboard.chevron.compact.down")
                    }
                    
                    Button("Save", action: saveUser)
                }
            }
        }.accentColor(.red)
        
        
    }
}

func saveUser() {
    print("User Saved")
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
            .preferredColorScheme(.dark)
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
