//
//  TwitterSwiftUiApp.swift
//  TwitterSwiftUi
//
//  Created by Raphael Freitas da Silva on 10/03/22.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUiApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                LoginView()
            }
        }
    }
}
