//
//  ClimateViewModel.swift
//  SmartHome
//
//  Created by Shahid on 29.12.22.
//

import Foundation
import SwiftUI

class ClimateViewmodel: ObservableObject {
  @Published var climate: [Climate] = []

  init() {
    final()
  }
  func final() {
    climate = allData
  }
}
  let allData = [
  Climate(color: "Blue", image: "First", type: "AC", device: "x4 Device"),
  Climate(color: "Circle", image: "Second", type: "Light", device: "x2 Device"),
  Climate(color: "Circle", image: "Third", type: "Climate", device: "x3 Device")
]


