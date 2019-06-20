//
//  RepeatDate.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import Foundation

enum RepeatDay: Int {
  case sunday = 0
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  
  var fullName: String {
    switch self {
    case .sunday: return "Sunday"
    case .monday: return "Monday"
    case .tuesday: return "Tuesday"
    case .wednesday: return "Wednesday"
    case .thursday: return "Thursday"
    case .friday: return "Friday"
    case .saturday: return "Saturday"
    }
  }
  
  var shortName: String {
    switch self {
    case .sunday: return "Sun"
    case .monday: return "Mon"
    case .tuesday: return "Tue"
    case .wednesday: return "Wed"
    case .thursday: return "Thu"
    case .friday: return "Fri"
    case .saturday: return "Sat"
    }
  }

}
