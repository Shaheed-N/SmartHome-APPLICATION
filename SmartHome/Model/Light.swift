//
//  Light.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import Foundation
import SwiftUI

struct Light: Identifiable {
  var id = UUID()
  let image: String
  let name: String
  let sub: String
}
struct N: Identifiable {
    var id: Int
    var active: Bool = false

}
