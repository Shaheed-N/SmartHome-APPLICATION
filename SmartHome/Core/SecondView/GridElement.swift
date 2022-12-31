//
//  GridElement.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import SwiftUI

struct GridElement: View {
  @ObservedObject var vm = LightVM()
  @State private var flag = true
  @State private var pass = false
  @State var isOn: Bool = true

  @StateObject var homeModel = HomeModel()

  let gradient = Gradient(colors: [Color.theme.purpleColor, .white])
    var body: some View {

      LazyVGrid(
        columns: [
          GridItem(.fixed(142), spacing: 20),
          GridItem(.fixed(142))
                  ],
        spacing: 22) {
          
          ForEach(vm.light) { data in


              VStack {
CustomToggle()
                VStack {
                  Image("\(data.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .shadow(color: .white ,radius: 5)
                  Text(data.name)
                    .foregroundColor(.white)
                    .font(.custom(Fonts.Poppins.medium, size: 14))
                  Text(data.sub)
                    .foregroundColor(.gray)
                    .font(.custom(Fonts.Poppins.medium, size: 10))
                }
                .padding(.top , -110)
              }
          }
        }
    }
}
struct GridElement_Previews: PreviewProvider {
    static var previews: some View {
      GridElement()
    }
}
struct CustomToggle: View {
  @State private var flag = true
  let gradient = Gradient(colors: [Color.theme.purpleColor, .white])
    var body: some View {
      Button(action: {
        withAnimation {
          self.flag.toggle()
        }
      }, label: {
        if flag {
          
          ZStack {
            RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.14, green: 0.15, blue: 0.23), Color(red: 0.09, green: 0.10, blue: 0.16)]), startPoint: .top, endPoint: .bottom))
            .frame(width: 142, height: 167)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 0, green: 0, blue: 0, opacity: 0)]), startPoint: .top, endPoint: .bottom), lineWidth: 1))
            VStack {
              HStack(spacing: 30) {
                Text("OFF")

                  .foregroundColor(.gray)
                  .font(.custom(Fonts.Poppins.medium, size: 15))
                ZStack {

                  Capsule()
                    .foregroundColor(Color("toggle"))
                    .frame(width: 35, height: 20)


                  Circle()
                    .foregroundColor(flag ? Color("circletoggle") : .white)
                    .frame(width: 15, height: 15)
                    .offset(x: flag ? -25 : -10)
                    .padding(.leading, 35)
                }
              }
              CircleNeumo()
            }
            .padding(.top , -40)
          }
        }
        else {
          ZStack {
            RoundedRectangle(cornerRadius: 20)
              .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.60, green: 0.30, blue: 0.97), Color(red: 0.15, green: 0.09, blue: 0.16)]), startPoint: .topLeading, endPoint: .bottomTrailing))
              .frame(width: 142, height: 167)
              .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 0, green: 0, blue: 0, opacity: 0)]), startPoint: .top, endPoint: .bottom), lineWidth: 1))
            VStack {
              HStack(spacing:30) {
                Text("ON")
                  .foregroundColor(.white)

                  .font(.custom(Fonts.Poppins.medium, size: 15))
                ZStack {

                  Capsule()
                    .foregroundColor(Color("toggle"))
                    .frame(width: 35, height: 20)

                  Circle()
                    .foregroundColor(flag ? Color("circletoggle") : .white)
                    .frame(width: 15, height: 15)
                    .offset(x: flag ? -25 : -10)
                    .padding(.leading, 35)
                }
              }
              Circle()
                .fill( RadialGradient(gradient: gradient, center: .center, startRadius: 12, endRadius:65))
                .frame(width: 40, height: 40)
            }
            .padding(.top , -41)
          }
        }
      } )
    }
}



