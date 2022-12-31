//
//  TemperatureView.swift
//  SmartHome
//
//  Created by Shahid on 29.12.22.
//

import SwiftUI
struct TemperatureView: View {
  @State var selectedIndex = 0

    var body: some View {
      VStack {
        ZStack {
          
          Image("Union")
            .resizable()
            .scaledToFit()
            .frame(width: 370 , height: 627)
          ZStack {
            Degree()
            
            CircleTemperature()
              .padding(.top , 100)
            RedLine(total: 10, completed: 2)
              .offset(x: 12 , y:45)
            GreenLine(total: 3, completed: 2)
              .offset(x: -1 , y:50)


          }
          
          .padding(.top , -300)
        }
        HStack(spacing: 150) {
          VStack(alignment: .leading) {
            Text("69m²")
              .font(.custom(Fonts.Poppins.medium, size: 36))
              .foregroundColor(.white)


            Text("First Floor")
              .font(.custom(Fonts.Poppins.medium, size: 18))
              .foregroundColor(.gray)

          }
          VStack {
            Text("46m")
              .font(.custom(Fonts.Poppins.medium, size: 36))
              .foregroundColor(.white)

            Text("Time")
              .font(.custom(Fonts.Poppins.medium, size: 18))
              .foregroundColor(.gray)

          }

        }
        .padding(.top , -250)



    

      }
    }
}
struct TemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureView()
    }
}
struct Degree: View {
  var body: some View {
    VStack(spacing: -50) {
      Text("20°")
        .fontWeight(.bold)
        .foregroundColor(.gray)
        .font(.system(size: 12))
      ZStack {
        Image("fortemperature")
          .resizable()
          .scaledToFit()
          .frame(width: 250 , height: 250)
        HStack(spacing: 260) {
          Text("10°")
          Text("30°")
        }
        .fontWeight(.bold)
        .foregroundColor(.gray)
        .font(.system(size: 12))

        .padding(.top , 120)
      }
    }
  }
}
struct CircleTemperature: View {
  let gradient = Gradient(colors: [.white, Color.theme.radial])
  var body: some View {
    ZStack {
      Circle()
        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.01, green: 0, blue: 0.05), Color(red: 0.84, green: 0.78, blue: 0.81, opacity: 0), Color(red: 0.84, green: 0.80, blue: 1)]), startPoint: .trailing, endPoint: .leading))
        .frame(width: 220 ,height: 220)
      Circle()
        .frame(width: 180 ,height: 180)
      Circle()
        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.53, green: 0.53, blue: 0.53), Color(red: 0.36, green: 0.36, blue: 0.36, opacity: 0)]), startPoint: .top, endPoint: .bottom))

        .frame(width: 160 ,height: 160)
      Circle()
        .fill( RadialGradient(gradient: gradient, center: .center, startRadius: -120, endRadius: 60))

        .frame(width: 140 ,height: 140)
      VStack(alignment: .leading, spacing: -10) {
        Text("20°")
          .font(.custom(Fonts.Poppins.medium, size: 55))
          .foregroundColor(.white)
        Text("Temperature")
          .fontWeight(.regular)
          .foregroundColor(.white)
          .font(.system(size: 12))
      }
      .shadow(color: .white, radius: 12)
      .padding(.top , -10)
      .padding(.leading , 10)
    }
  }
}
struct RedLine: View {
  let total: Int
  let completed: Int
  @State var lineWidth: CGFloat = 8
  @State var color = LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 0.26, blue: 0.71), Color(red: 1, green: 0, blue: 0)]), startPoint: .topTrailing, endPoint: .bottomLeading)


  var body: some View  {
    ZStack {
      Circle()
        .trim(from: 0, to: CGFloat(completed)/CGFloat(total))
        .stroke(color,
                style: StrokeStyle(
                  lineWidth: lineWidth,
                  lineCap: .round
                ))
        .rotationEffect(.degrees(-60))
        .padding(lineWidth/2)
        .frame(width: 150 , height: 150)
        .shadow(color: .pink, radius: 5)
      ZStack {
        Ellipse()          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.15, green: 0.13, blue: 0.18), Color(red: 0.09, green: 0.07, blue: 0.12)]), startPoint: .top, endPoint: .bottom))
          .frame(width: 25, height: 25)
          .overlay(Ellipse().stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 0.19, blue: 0.31), Color(red: 1, green: 0.19, blue: 0.31, opacity: 0)]), startPoint: .trailing, endPoint: .leading), lineWidth: 1))
        Image("Winter")
      }
      .offset(x:25, y:-70)

    }
  }
}
struct GreenLine: View {
  let total: Int
  let completed: Int
  @State var lineWidth: CGFloat = 8
  @State var color = LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.92, blue: 0.38), Color(red: 0.13, green: 0.31, blue: 0.93)]), startPoint: .top, endPoint: .bottom)


  var body: some View  {
    ZStack {
      Circle()
        .trim(from: 0, to: CGFloat(completed)/CGFloat(total))
        .stroke(color,
                style: StrokeStyle(
                  lineWidth: lineWidth,
                  lineCap: .round
                ))
        .rotationEffect(.degrees(30))
        .padding(lineWidth/2)
        .frame(width: 175 , height: 175)
        .shadow(color: Color("Linear"), radius: 6)
      ZStack {
        Ellipse()
          .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color(red: 0.11, green: 0.11, blue: 0.11)]), startPoint: .leading, endPoint: .trailing))
          .frame(width: 25, height: 25)
          .overlay(Ellipse().stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.22, green: 0.90, blue: 0.49), Color(red: 1, green: 0.82, blue: 0.82, opacity: 0)]), startPoint: .leading, endPoint: .trailing), lineWidth: 1))
        Image("Speed")

      }
      .offset(x:75, y:40)

    }
  }
}
