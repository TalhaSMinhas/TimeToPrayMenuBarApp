//
//  TimetableStore.swift
//  TimeToPray
//
//  Created by Talha Salman Minhas on 2025/08/22.
//

import Foundation

final class TimetableStore: ObservableObject {
    @Published var table: Timetable = [:]

    init() { load() }

    func load() {
        guard let url = Bundle.main.url(
            forResource: "masjid-ul-khaleel_2025_salah_times_table_schema",
            withExtension: "json"
        ) else {
            print("JSON not found in bundle")
            return
        }
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode(Timetable.self, from: data)
            self.table = decoded
        } catch {
            print("Failed to decode JSON:", error)
        }
    }

    func timesFor(date: Date = Date()) -> DayTimes? {
        let cal = Calendar.current
        let m = cal.component(.month, from: date)
        let d = cal.component(.day, from: date)
        let monthName = cal.monthSymbols[m - 1]
        return table[monthName]?["\(d)"]
    }
}
