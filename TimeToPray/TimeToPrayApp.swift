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
        MenuBarExtra {
            ContentView()
                .overlay(alignment: .topTrailing) {
                    Button(
                        "Quit",
                        systemImage: "x.circle.fill"
                    ) {
                        NSApp.terminate(nil)
                    }
                    .labelStyle(.iconOnly)
                    .buttonStyle(.plain)
                    .padding(10)
                }
                .frame(width: 280, height: 210)
                .background(.ultraThinMaterial)
        } label: {
            Label {
                Text("Time to Pray")
            } icon: {
                if let nsImage = NSImage(named: "mosque") {
                    Image(nsImage: nsImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                } else {
                    Image(systemName: "moon.stars") // fallback
                }
            }
        }
        .menuBarExtraStyle(.window)
    }
}

