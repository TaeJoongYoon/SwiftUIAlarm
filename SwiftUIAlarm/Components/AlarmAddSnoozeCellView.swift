//
//  AlarmAddSnoozeCellView
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmAddSnoozeCellView : View {
  @Binding var isSnoozed: Bool
  
  var body: some View {
    Toggle(isOn: $isSnoozed) {
      Text("Snooze")
    }
  }
}
