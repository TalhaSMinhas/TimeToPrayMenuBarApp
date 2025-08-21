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
    
    func addMinutes(to time: String?, minutes: Int) -> String? {
        guard let time = time else { return nil }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        
        guard let date = formatter.date(from: time) else { return nil }
        
        let newDate = Calendar.current.date(byAdding: .minute, value: minutes, to: date)!
        return formatter.string(from: newDate)
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
                Grid(alignment: .leading, horizontalSpacing: 20, verticalSpacing: 6){
                    GridRow{
                        Text("")
                        Text("Azaan")
                        Text("Jamaat")
                    }
                    
                    GridRow{
                        Text("Fajr")
                        Text("\(today.fajrAzaan ?? "--")")
                        Text("\(today.fajrJamaat ?? "--")")
                    }
                    
                    GridRow{
                        Text("Zuhr")
                        Text("\(today.zuhrAzaan ?? "--")")
                        Text("\(today.zuhrJamaat ?? "--")")
                    }
                    
                    GridRow{
                        Text("Asr")
                        Text("\(today.asrAzaan ?? "--")")
                        Text("\(today.asrJamaat ?? "--")")
                    }
                    
                    GridRow{
                        Text("Maghrib")
                        Text("\(today.maghrib ?? "--")")
                        Text("\(addMinutes(to: today.maghrib, minutes: 3) ?? "--")")
                    }
                    
                    GridRow{
                        Text("Esha")
                        Text("\(today.eshaAzaan ?? "--")")
                        Text("\(today.eshaJamaat ?? "--")")
                    }
                }
            } else {
                Text("No data for today")
            }
        }
        .padding()
        .frame(width: 280)
        .background(.ultraThinMaterial)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(.white.opacity(0.2), lineWidth: 1)
        )
    }
}

#Preview {
    ContentView()
}
