//
//  AlarmView.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/14.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmView : View {
  @EnvironmentObject var alarmData: AlarmData
  let alarm: Alarm
  
  var alarmIndex: Int {
    alarmData.alarms.firstIndex(where: { $0.id == alarm.id})!
  }
  
  let timeFormat: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "h:mm"
    return formatter
  }()
  
  let meridiemFormat: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "a"
    return formatter
  }()
  
  var body: some View {
    Toggle(isOn: $alarmData.alarms[alarmIndex].isActive) {
      VStack(alignment: .leading, spacing: 0) {
          Text("\(self.alarm.date, formatter: self.timeFormat)")
            .font(.system(size: 40))
            +
          Text("\(self.alarm.date, formatter: self.meridiemFormat)")
            .font(.system(size: 20))
        HStack(spacing: 0) {
          Text(self.alarm.label)
            .font(.subheadline)
          
          if self.alarm.repeats != "" {
            Text(", \(self.alarm.repeats)")
              .font(.subheadline)
          }
        }
      }
    }
  }
}
