//
//  Ex1SimpleApp.swift
//  Ex1Simple
//
//  Created by new on 16/1/2023.
//

import SwiftUI

@main
struct Ex1SimpleApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(orderModel: OrderModel())
//                .environmentObject(UserPreferences())
            RootTabView()
                .environmentObject(UserPreferences())
        }
    }
}
