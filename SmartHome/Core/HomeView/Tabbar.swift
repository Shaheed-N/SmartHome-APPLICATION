//
//  Tabbar.swift
//  neumo
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

struct Tabbar: View {
  @Binding var selectedIndex : Int
  @Binding var showMyLibraryView: Bool
  @State var show = true
  @State var animations = 1.0

    var body: some View {
      ZStack {


        RoundedRectangle(cornerRadius: 50)
          .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.15, green: 0.13, blue: 0.20), Color(red: 0.09, green: 0.07, blue: 0.12)]), startPoint: .top, endPoint: .bottom))
          .frame(width: 390, height: 100)
          .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color(red: 0.38, green: 0.38, blue: 0.38), lineWidth: 1))
        if show {
          otpecatok()
            .padding(.top, -100)
            .animation(.easeInOut, value: 2)

        }
        else {


              PowerView()

          }

        HStack(spacing: 60) {
          Button(action: {
            if selectedIndex == 2 {
              showMyLibraryView = true
            } else {
              withAnimation {
                show = true
                selectedIndex = 0
              }
            }
          }, label: {
            ZStack {
              HStack(spacing: -21)  {
                Image("button1")
                  .renderingMode(.template)
                  .font(.system(size: 18))
                  .offset(x: -5)


                  .foregroundColor(selectedIndex == 1 ? Color.gray : Color("layer"))
                  .scaledToFit()

             
              }
            }
            Spacer()
          })
          Button(action: {
            if selectedIndex == 2 {
              showMyLibraryView = true
            } else {
              withAnimation {
                show = false

                selectedIndex = 1

              }

              
            }
          }, label: {
            ZStack {
              HStack(spacing: -21)  {
                
                Image("button2")
                  .renderingMode(.template)
                  .font(.system(size: 18))
                  .offset(x: -5)
                


                  .foregroundColor(selectedIndex == 1 ? Color("layer") : .gray)
                
                  .scaledToFit()


                  .foregroundColor(selectedIndex == 1 ? Color("layer") : .gray)



              }
            }
            Spacer()
          })


        }
        .offset(x:80)
      }

      }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
      Tabbar(selectedIndex: .constant(0), showMyLibraryView: .constant(false))
    }
}
