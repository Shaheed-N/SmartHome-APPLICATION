//
//  SmartHomeApp.swift
//  SmartHome
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

@main
struct SmartHomeApp: App {
    var body: some Scene {
        WindowGroup {
          MainView(showTabBar: .constant(true))
        }
    }
}
