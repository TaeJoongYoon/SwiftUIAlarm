//
//  AlarmRepeatCellView.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmRepeatCellView : View {
  @Binding var repeatDay: [RepeatDay]
  @Binding var index: Int
  @State var isContained: Bool
  
  var body: some View {
    HStack {
      Text("Every \(RepeatDay(rawValue: index)!.fullName)")
      Spacer()
      if isContained {
        Image(systemName: "checkmark")
          .foregroundColor(Color.accentColor)
        }
      }
      .tapAction(count: 1) {
        self.toggle(self.index)
      }
  }
  
  private func toggle(_ index: Int) {
    let day = RepeatDay(rawValue: index)!
    self.isContained.toggle()
    
    if self.repeatDay.contains(day) {
      self.repeatDay.removeAll(where: { $0.rawValue == day.rawValue })
    } else {
      self.repeatDay.append(day)
    }
  }
}
