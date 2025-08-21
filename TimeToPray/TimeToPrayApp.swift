//
//  TimeToPrayApp.swift
//  TimeToPray
//
//  Created by Talha Salman Minhas on 2025/08/21.
//

import SwiftUI

@main
struct TimeToPrayApp: App {
    var body: some Scene {
        MenuBarExtra(
            "TimeToPray",
            systemImage: "characters.uppercase"
        ){
            ContentView()
                .frame(width: 300, height: 180)
        }
        .menuBarExtraStyle(.window)
    }
}
