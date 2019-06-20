//
//  AlarmListView.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/14.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmListView : View {
  @EnvironmentObject var alarmData: AlarmData
  
  var body: some View {
    NavigationView {
      List {
        ForEach(self.alarmData.alarms) { alarm in
          AlarmView(alarm: alarm)
        }
      }
      .navigationBarTitle(Text("Alarm"))
      .navigationBarItems(
        trailing:PresentationButton(
          Image(systemName: "plus"),
          destination: AlarmAddView().environmentObject(self.alarmData)
        )
      )
    }
  }
}
