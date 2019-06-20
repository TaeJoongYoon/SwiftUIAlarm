//
//  AlarmAddLabelCellView
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/20.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import SwiftUI

struct AlarmAddLabelCellView : View {
  @Binding var label: String
  
  var body: some View {
    NavigationButton(destination: AlarmLabelView(label: $label)){
      HStack {
        Text("Label")
        Spacer()
        Text(label)
      }
    }
  }
}
