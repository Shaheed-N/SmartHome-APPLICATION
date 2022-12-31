//
//  SecondView.swift
//  SmartHome
//
//  Created by Shahid on 29.12.22.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
      
      NavigationView {
        
        ZStack {

          BackgroundColor()

            VStack {
              InfoView()
                .navigationBarItems(leading: Profile, trailing: button)
              ScrollView(.vertical , showsIndicators: false) {
                MyHomeView()
                RoundedRectangle(cornerRadius: 20)
                  .frame(width: 40, height: 90)
                  .hidden()
              }
            }
            .padding(.top ,40)
            .navigationBarTitleDisplayMode(.inline)


        }
      }
      
    }
  var Profile: some View {
      HStack {
        ZStack {
          CircleNeumo()
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .scaledToFit()
        }
        VStack(alignment: .leading) {
          Text("Hi, user")
            .foregroundColor(.white)
            .font(.custom(Fonts.Poppins.bold, size: 18))

          Text("Manage your home")
            .font(.custom(Fonts.Poppins.medium, size: 13))
            .foregroundColor(.gray)




      }
    }
    }
  var button: some View {
    ZStack {
      CircleNeumo()
      HStack(spacing:-5) {
        Ellipse()
          .fill(Color(red: 0.98, green: 0.47, blue: 0.19))
          .frame(width: 12, height: 12)
          .blur(radius: 1)
          .shadow(radius: 4, y: 2)
        Ellipse()
          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 1, blue: 1, opacity: 0.45), Color(red: 1, green: 1, blue: 1, opacity: 0)]), startPoint: .bottomLeading, endPoint:
              .topTrailing))
          .shadow(color: .orange, radius: 9.5)
          .frame(width: 15, height: 15)
          .offset(y: -5)
      }
      .shadow(color: .orange, radius: 0.2)
      .padding(.top , 5)
          }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
