//
//  Energy.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import SwiftUI

struct Energy: View {
    var body: some View {
      ZStack {
        RoundedRectangle(cornerRadius: 30)
          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.01, green: 0.02, blue: 0.01), Color(red: 0.21, green: 0.22, blue: 0.21)]), startPoint: .leading, endPoint: .trailing))
          .frame(width: 350, height: 83)
        HStack(spacing: 20) {

          ZStack {

            RoundedRectangle(cornerRadius: 30)
              .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.33, green: 0.93, blue: 0.52), Color(red: 0.12, green: 0.65, blue: 0.23)]), startPoint: .leading, endPoint: .trailing))
              .frame(width: 173, height: 83)
            HStack {
              ZStack {
                Ellipse()
                  .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.33, green: 0.93, blue: 0.52), Color(red: 0.12, green: 0.65, blue: 0.23)]), startPoint: .leading, endPoint: .trailing))            .frame(width: 65, height: 65)
                  .overlay(Ellipse().stroke(Color.white, lineWidth: 1))
                  .shadow(radius: 4, y: 3)
                Image("molniya")
              }
              Text("Energy")
                .font(.custom(Fonts.Poppins.medium, size: 22))
                .foregroundColor(.white)
            }

          }
          VStack {
            Text("15.2 kWh")
              .font(.custom(Fonts.Poppins.medium, size: 30))
            Text("2x DeviceTurn On")
              .font(.custom(Fonts.Poppins.medium, size: 10))
          }
          .foregroundColor(.white)


        }
        .padding(.trailing , 29)
      }
    }
}

struct Energy_Previews: PreviewProvider {
    static var previews: some View {
        Energy()
    }
}
