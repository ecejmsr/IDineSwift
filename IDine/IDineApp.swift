//
//  IDineApp.swift
//  IDine
//
//  Created by Jose Rodriguez on 4/2/22.
//

import SwiftUI

@main
struct IDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
