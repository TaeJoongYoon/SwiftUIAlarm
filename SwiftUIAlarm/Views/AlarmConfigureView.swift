//
//  AlarmConfigureView.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmConfigureView : View {
  let type: ConfigureType
  
  var body: some View {
    HStack {
      Text(self.type.description)
      Spacer()
      Group {
        if type.rawValue == 0 {
          Text("Never")
        } else if type.rawValue == 1 {
          Text("Alarm")
        } else if type.rawValue == 2 {
          Toggle()
        }
      }
    }
  }
}
