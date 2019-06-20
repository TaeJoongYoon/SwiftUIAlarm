//
//  UserDefaultAlarm.swift
//  SwiftUIAlarm
//
//  Created by Tae joong Yoon on 2019/06/14.
//  Copyright © 2019 Tae joong Yoon. All rights reserved.
//

import Foundation

@propertyDelegate
struct UserDefaultAlarm<Value: Codable> {
  let key: String
  let defaultValue: Value
  
  var value: Value {
    get {
      let data = UserDefaults.standard.data(forKey: key)
      let value = data.flatMap { try? JSONDecoder().decode(Value.self, from: $0) }
      return value ?? defaultValue
    }
    set {
      let data = try? JSONEncoder().encode(newValue)
      UserDefaults.standard.set(data, forKey: key)
    }
  }
}
