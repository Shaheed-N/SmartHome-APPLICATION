//
//  SwiftUIView.swift
//  SmartHome
//
//  Created by Shahid on 31.12.22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
      ForEach(0..<4)  { _ in

          RoundedRectangle(cornerRadius:20)
          .frame(width: 40, height: 40)


      }    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
