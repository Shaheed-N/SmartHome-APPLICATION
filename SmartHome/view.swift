//
//  view.swift
//  SmartHome
//
//  Created by Shahid on 28.12.22.
//

import SwiftUI

struct view: View {



  var cornerRadius: CGFloat = 20

  var body: some View {
    Circle()
    .shadow(
      color: Color(white: 1.0).opacity(0.9),
      radius: size * 0.1875,
      x: -size * 0.1875,
      y: -size * 0.1875)
    .clipShape(RoundedRectangle(cornerRadius: size * 8 / 16))
  }
}

struct view_Previews: PreviewProvider {
    static var previews: some View {
        view()
    }
}
