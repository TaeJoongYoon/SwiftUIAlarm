//
//  Array+RepeatDay.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import Foundation

extension Array where Element == Int {
  var repeats: String {
    let sorted = self.sorted()
    if sorted == [0, 6] { return "every weekend" }
    if sorted == [1 ,2, 3, 4, 5] { return "every weekday" }
    if sorted == [0, 1, 2, 3, 4, 5, 6] { return "every day" }
    
    var returnedDay = ""
    for i in sorted {
      guard let day = RepeatDay(rawValue: i)?.shortName else { return returnedDay }
      returnedDay += "\(day) "
    }
    
    return returnedDay
  }
}

extension Array where Element == RepeatDay {
  var repeats: String {
    guard self.count > 0 else { return "" }
    
    let rawValues = self.map { $0.rawValue }
    return rawValues.repeats
  }
}
