//
//  NavigationAppApp.swift
//  NavigationApp
//
//  Created by Janitha Katukenda on 2021-05-12.
//

import Foundation
import SwiftUI

 @main
 struct NavigationAppApp: App {

     init() {
         UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.red]
     }
     var body: some Scene {
         WindowGroup {
             RedOneView()
         }
     }
 }
