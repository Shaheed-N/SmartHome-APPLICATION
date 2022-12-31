//
//  CircleNeumo.swift
//  neumo
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

struct CircleNeumo: View {
  var cornerRadius: CGFloat = 20

  var body: some View {

      
          ZStack {
            Circle()
                  .fill(Color("Circle"))
                  .frame(width: 40, height: 40)
              Circle()
                  .fill(Color("Circle"))
                  .frame(width: 40, height: 40)
                  .blur(radius: 15)
                  .opacity(0.7)
                  .shadow(color: Color("Circle"), radius: 5, x: -10, y: -10)
            Circle()
                  .fill(Color("Circle"))
                  .frame(width: 40, height: 40)
                  .blur(radius: 3)
                  .opacity(0.9)
                  .shadow(color: Color("kLightShadow"), radius: 15, x: 0, y: 0)

          }
          .mask(
         Circle()
          )


    

  }

}

struct CircleNeumo_Previews: PreviewProvider {
    static var previews: some View {
        CircleNeumo()
    }
}
