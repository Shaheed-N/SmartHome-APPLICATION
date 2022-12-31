//
//  otpecatok.swift
//  neumo
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

struct otpecatok: View {
    var body: some View {
      ZStack {

        Circle()
          .fill(Color(red: 0.29, green: 0.29, blue: 0.29))
          .frame(width: 95, height: 95)
        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.98, green: 0.60, blue: 0.32), Color(red: 1, green: 0.82, blue: 0.82, opacity: 0)]), startPoint: .top, endPoint: .bottom), lineWidth: 1))
        Ellipse()
          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 0.77, blue: 0.56), Color(red: 0.86, green: 0.36, blue: 0)]), startPoint: .top, endPoint: .bottom))
          .frame(width: 80, height: 80)
          .overlay(Ellipse().stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 100, green: 90, blue: 30, opacity: 0)]), startPoint: .top, endPoint: .bottom), lineWidth: 0.8))
          .shadow(color: Color.orange , radius: 10)
        Image("otpecatok")
          .resizable()
          .scaledToFit()
          .frame(width: 50 , height: 50)

      }


    }
}

struct otpecatok_Previews: PreviewProvider {
    static var previews: some View {
        otpecatok()
    }
}
