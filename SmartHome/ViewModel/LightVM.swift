//
//  LightVM.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import Foundation
import SwiftUI

class LightVM: ObservableObject {
  @Published var light: [Light] = []

  init() {
    finish()
  }
  func finish() {
    light = datas
  }
}
  let datas = [
  Light(image: "light", name: "Light", sub: "2hr 28min"),
  Light(image: "night", name: "Climate", sub: "4hr 16min"),
  Light(image: "", name: "", sub: ""),
  Light(image: "", name: "", sub: "")
]
class HomeModel: ObservableObject {
    @Published var lights = (1 ... 4).map { N(id: $0) }
}
