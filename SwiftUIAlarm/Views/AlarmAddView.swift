//
//  AlarmAddView.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/19.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmAddView : View {
  @EnvironmentObject var alarmData: AlarmData
  @Environment(\.isPresented) var isPresented: Binding<Bool>?
  
  @State var date: Date = Date()
  @State var repeatDay: [RepeatDay] = []
  @State var label: String = "Alarm"
  @State var isSnoozed: Bool = true
  
  var body: some View {
    NavigationView {
      VStack(spacing: 0) {
        DatePicker($date, minimumDate: nil, maximumDate: nil, displayedComponents: .hourAndMinute)
        List {
          AlarmAddRepeatCellView(repeatDay: $repeatDay)
          AlarmAddLabelCellView(label: $label)
          AlarmAddSnoozeCellView(isSnoozed: $isSnoozed)
        }.listStyle(.grouped)
      }
      .navigationBarTitle(Text("New Alarm"), displayMode: .inline)
      .navigationBarItems(
        leading: Button(action: self.cancel) {
          Text("Cancel")
        },
        trailing: Button(action: self.createAlarm) {
          Text("Save")
        }
    )
    }
  }
  
  private func cancel() {
    self.isPresented?.value = false
  }
  
  private func createAlarm() {
    let newAlarm = Alarm(
      date: date,
      label: label,
      repeatDay: repeatDay,
      isActive: true,
      isSnooze: isSnoozed
    )
    
    self.alarmData.alarms.append(newAlarm)
    self.isPresented?.value = false
  }
}
