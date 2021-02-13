//
//  DateTime.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/13.
//

import Foundation

func formatDatetimeToString(hour: String, minute: String, second: String) -> String {
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = .positional
    formatter.allowedUnits = [.hour, .minute, .second]
    
    return formatter.string(from: TimeInterval(convertToSecond(hour: hour, minute: minute, second: second)))!
}

func convertToSecond(hour: String, minute: String, second: String) -> Int {
    let hourSec = Int(hour)! * 3600
    let MinuteSec = Int(minute)! * 60
    
    return Int(hourSec + MinuteSec + Int(second)!)
}
