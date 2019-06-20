//
//  AlarmAddRepeatCellView
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmAddRepeatCellView : View {
  @Binding var repeatDay: [RepeatDay]
  
  var body: some View {
    NavigationButton(destination: AlarmRepeatView(repeatDay: $repeatDay)){
      HStack {
        Text("Repeat")
        Spacer()
        if $repeatDay.count == 0 {
          Text("Never")
        } else {
          Text(repeatDay.repeats)
        }
      }
    }
  }
}
