//
//  background.swift
//  neumo
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
      ZStack {
        Color("second")
          .edgesIgnoringSafeArea(.all)
          .foregroundColor(.orange)
        RoundedRectangle(cornerRadius: 60)
          .frame(width:385, height: 850)
          .foregroundColor(Color("homecolor"))
          .padding(.trailing , 10 )
          .padding(.top , -10 )


      }

    }
}

struct BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor()
    }
}
