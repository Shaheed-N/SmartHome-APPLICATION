//
//  ContentView.swift
//  neumo
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

struct Rectangle: View {
  @ObservedObject var vm = ClimateViewmodel()
  var cornerRadius: CGFloat = 20
  var body: some View {
    ScrollView(.horizontal , showsIndicators: false){
      HStack(spacing: 20) {

        ForEach(vm.climate) {
          data in
          ZStack {

            RoundedRectangle(cornerRadius: 25)
              .fill(Color("\(data.color)"))
              .frame(width: 105, height: 137)
              .overlay(
                RoundedRectangle(cornerRadius: 25)
                  .stroke(Color("kLightShadow"), lineWidth: 1)
                  .frame(width: 105, height: 137)
                  .blur(radius: 3)
                  .offset(x: 0, y: 1)
                  .mask(    RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(Color.black, Color.clear)))
              )
              .frame(width: 105, height: 137)
              .overlay(
                
                RoundedRectangle(cornerRadius: 25)
                  .stroke(Color.white, lineWidth: 0.1)
                  .blur(radius: 40)
                  .offset(x: -20, y: 5)
                  .mask(RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(Color.clear, Color.black)))
              )
              .frame(width: 105, height: 137)
            VStack(spacing: 15) {
              Image("\(data.image)")
                .resizable()
                .scaledToFit()
                .frame(width: 30 , height: 30)
              VStack(spacing: 5) {

                Text(data.type)
                  .font(.callout)
                  .fontWeight(.regular)
                  .font(.system(size: 18))
                  .foregroundColor(.white)
                Text(data.device)
                  .fontWeight(.thin)
                  .font(.system(size: 10))
                  .foregroundColor(.white)

              }
            }
          }
          }
        }
      .padding(.leading , 17)
    }
  }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle()
    }
}
extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
extension Color {
  static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}
