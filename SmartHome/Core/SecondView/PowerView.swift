//
//  PowerView.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import SwiftUI

struct PowerView: View {
    var body: some View {
      ZStack {
        Circle()
          .frame(width: 65, height: 65)
          .foregroundColor(Color("PowerColor"))
        Circle()
          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 0.77, blue: 0.56), Color(red: 0.86, green: 0.36, blue: 0)]), startPoint: .top, endPoint: .bottom))
          .frame(width: 50 , height: 50)
          .shadow(color: .orange, radius: 15)
        Image("Power")
          .resizable()
          .scaledToFit()
          .frame(width: 40, height: 42)

      }
    }
}

struct PowerView_Previews: PreviewProvider {
    static var previews: some View {
        PowerView()
    }
}
