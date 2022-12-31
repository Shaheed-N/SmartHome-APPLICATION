//
//  InfoView.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
      ZStack {
        ZStack {
          RoundedRectangle(cornerRadius: 35)
            .trim(from: 0.5 , to: 10)
            .foregroundColor(Color("cardcolor2"))
            .frame(width: 280, height: 120)
            .rotationEffect(.degrees(180))
          HStack {
            VStack {
              Text("25°")
              Text("Sensible")

            }
            VStack {
              Text("63%")
              Text("Humidity")

            }
            VStack {
              Text("1009 hPA")
              Text("Pressure")

            }
          }
          .padding(.top ,55)
          .font(.custom(Fonts.Poppins.medium, size: 16))
          .foregroundColor(.gray)
        }
        .padding(.top ,205)
        ZStack {
          RoundedRectangle(cornerRadius: 50)
            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.11, green: 0.12, blue: 0.17), Color(red: 0.26, green: 0.28, blue: 0.39)]), startPoint: .bottom, endPoint: .top))
            .frame(width: 360, height: 206)

          ZStack {
            RoundedRectangle(cornerRadius: 45)
              .trim(from: 0.5 , to: 10)
              .foregroundColor(Color("today"))
              .frame(width: 160, height: 60)
              .rotationEffect(.degrees(180))
            Text("Today")
              .font(.custom(Fonts.Poppins.medium, size: 18))
              .foregroundColor(.gray)
              .padding(.top, 25)

          }
          .padding(.top , -132)
          HStack(spacing: -40) {
            Image("info")
              .resizable()
              .scaledToFit()
              .frame(width: 200 , height: 200)
              .padding(.top , 15)
              .shadow(color: .yellow, radius: 50)

            VStack(alignment: .leading, spacing:5) {
              HStack(spacing: -2) {
                Text("28")
                  .font(.custom(Fonts.Poppins.bold, size: 70))
                  .foregroundColor(.white)
                Text("/13°")
                  .font(.custom(Fonts.Poppins.bold, size: 18))
                  .foregroundColor(.gray)
                  .padding(.top , 30)

              }
              .padding(.leading , 50)

              RoundedRectangle(cornerRadius: 0)
                .frame(width: 200 , height: 0.8)
                .foregroundColor(.gray)
              Text("Sunny with cold")
                .font(.custom(Fonts.Poppins.medium, size: 14))
                .foregroundColor(.gray)

            }
            .padding(.top , -10)


          }

        }

      }

    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
