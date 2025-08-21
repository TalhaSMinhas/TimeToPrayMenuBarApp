//
//  ContentView.swift
//  TimeToPray
//
//  Created by Talha Salman Minhas on 2025/08/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var store = TimetableStore()

        var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                if let today = store.timesFor() {
                    Text("Fajr: \(today.fajr ?? "--")")
                    Text("Zuhr: \(today.zuhr ?? "--")")
                    Text("Maghrib: \(today.maghrib ?? "--")")
                } else {
                    Text("No data for today")
                }
            }
            .padding(12)
            .frame(width: 280)
        }
}

#Preview {
    ContentView()
}
