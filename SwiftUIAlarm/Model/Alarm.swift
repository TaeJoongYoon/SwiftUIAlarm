//
//  Alarm.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/14.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct Alarm: Hashable, Codable, Identifiable {

  let id: UUID
  var date: Date
  var label: String
  var repeatDay: [Int]
  var isActive: Bool
  var isSnooze: Bool
  
  // Repeat Day String
  var repeats: String {
    guard repeatDay.count > 0 else { return "" }
    return repeatDay.repeats
  }
  
  init(date: Date, label: String, repeatDay: [RepeatDay], isActive: Bool, isSnooze: Bool) {
    self.id = UUID()
    self.date = date
    self.label = label
    self.repeatDay = repeatDay.map { $0.rawValue }
    self.isActive = isActive
    self.isSnooze = isSnooze
  }
  
  // Default Alarms
  static var defaultAlarm: [Alarm] {
    get {
      [
        Alarm(date: Date().addingTimeInterval(-1000), label: "Alarm", repeatDay: [.sunday], isActive: true, isSnooze: true),
        Alarm(date: Date(), label: "Alarm", repeatDay: [.sunday, .monday], isActive: true, isSnooze: false),
        Alarm(date: Date().addingTimeInterval(+1000), label: "Alarm", repeatDay: [.sunday, .monday, .tuesday, .wednesday, .thursday, .friday, .saturday], isActive: false, isSnooze: false)
      ]
    }
  }
}
