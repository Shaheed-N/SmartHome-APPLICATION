//
//  ContentView.swift
//  SmartHome
//
//  Created by Shahid on 28.12.22.
//
import SwiftUI
struct HomeView: View {
var cornerRadius: CGFloat = 20
var backButton: some View {
    ZStack {
    CircleNeumo()
      Image("back")
        .resizable()
        .scaledToFit()
    }
  }
  var body: some View {
    NavigationView {
      ZStack {

        BackgroundColor()
        VStack {
          Rectangle()
            .navigationBarItems(leading: backButton, trailing: button)
          TemperatureView()
            .padding(.top , -20)
        }
        .padding(.top , 120)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .principal) {
            Text("Living Room")
              .font(.custom(Fonts.Poppins.bold, size: 20))
              .foregroundColor(.white)

          }
        }
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
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


