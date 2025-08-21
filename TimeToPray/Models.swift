//
//  Models.swift
//  TimeToPray
//
//  Created by Talha Salman Minhas on 2025/08/21.
//

import Foundation

struct DayTimes: Codable {
    let sehri: String?
    let subuhSadik: String?
    let fajr: String?
    let fajrAzaan: String?
    let fajrJamaat: String?
    let sunrise: String?
    let ishraaq: String?
    let chast: String?
    let zawal: String?
    let zuhr: String?
    let zuhrAzaan: String?
    let zuhrJamaat: String?
    let jummahAzaan: String?
    let jummah: String?
    let asrShafi: String?
    let asrHanafi: String?
    let asrAzaan: String?
    let asrJamaat: String?
    let sunset: String?
    let maghrib: String?
    let esha: String?
    let eshaAzaan: String?
    let eshaJamaat: String?

    enum CodingKeys: String, CodingKey {
        case sehri = "Sehri"
        case subuhSadik = "Subuh Sadik"
        case fajr = "Fajr"
        case fajrAzaan = "Fajr Azaan"
        case fajrJamaat = "Fajr Jamaat"
        case sunrise = "Sunrise"
        case ishraaq = "Ishraaq"
        case chast = "Chast"
        case zawal = "Zawal"
        case zuhr = "Zuhr"
        case zuhrAzaan = "Zuhr Azaan"
        case zuhrJamaat = "Zuhr Jamaat"
        case jummahAzaan = "Jummah Azaan"
        case jummah = "Jummah"
        case asrShafi = "Asr-Shafi"
        case asrHanafi = "Asr-Hanafi"
        case asrAzaan = "Asr Azaan"
        case asrJamaat = "Asr Jamaat"
        case sunset = "Sunset"
        case maghrib = "Maghrib"
        case esha = "Esha"
        case eshaAzaan = "Esha Azaan"
        case eshaJamaat = "Esha Jamaat"
    }
}

typealias Timetable = [String: [String: DayTimes]]
