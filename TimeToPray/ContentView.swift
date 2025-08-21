//
//  ContentView.swift
//  TimeToPray
//
//  Created by Talha Salman Minhas on 2025/08/21.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @StateObject private var store = TimetableStore()
    
    var hijriDateString: String {
        // start from today
        let currentDate = Date()
        
        // subtract 1 day
        guard let adjustedDate = Calendar.current.date(byAdding: .day, value: -1, to: currentDate) else {
            return ""
        }

        let hijriCalendar = Calendar(identifier: .islamicUmmAlQura)

        let dateFormatter = DateFormatter()
        dateFormatter.calendar = hijriCalendar
        dateFormatter.locale = Locale(identifier: "en-US")
        dateFormatter.dateFormat = "dd MMMM yyyy"

        return dateFormatter.string(from: adjustedDate)
    }
    
    var gregorianDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter.string(from: Date())
    }
    
    struct VerticalDivider: View {
        var body: some View {
            Rectangle()
                .frame(width: 1, height: 40)
                .foregroundColor(.gray.opacity(0.4))
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let today = store.timesFor() {
                HStack(alignment: .center){
                    VStack(alignment: .leading){
                        Text("\(hijriDateString)")
                        Text("\(gregorianDateString)")
                    }
                    VerticalDivider()
                    Text("Masjid-ul-Khaleel")
                }
                Divider()
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
