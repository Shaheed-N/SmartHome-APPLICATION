//
//  MyHomeView.swift
//  SmartHome
//
//  Created by Shahid on 30.12.22.
//

import SwiftUI

struct MyHomeView: View {
    var body: some View {
      ZStack {

        RoundedRectangle(cornerRadius: 50)
          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.11, green: 0.12, blue: 0.17), Color(red: 0.26, green: 0.28, blue: 0.39)]), startPoint: .bottom, endPoint: .top))
          .frame(width: 390, height: 700)
        VStack {
          HStack(spacing: 60) {
            HStack {
              Text("My")
                .foregroundColor(.white)
              
              Text("Home")
                .foregroundColor(.yellow)
            }
            .font(.custom(Fonts.Poppins.medium, size: 30))
            HStack {
              ForEach(0..<3) { _ in
                Image(systemName: "circle.fill")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 8 , height: 8)
                  .foregroundColor(.gray)
                
              }
            }
          }
          .padding(.leading , 100)
          Energy()
         
            Grid()

        }
        .padding(.top , 20)
      }
    }
}

struct MyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MyHomeView()
    }
}
