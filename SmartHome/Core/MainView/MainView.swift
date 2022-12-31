//
//  MainView.swift
//  SmartHome
//
//  Created by Shahid on 29.12.22.
//

import SwiftUI

struct MainView: View {
  @State var selectedIndex = 0
  @Binding var showTabBar: Bool

  var body: some View {
    ZStack {

    if selectedIndex == 0 {
      HomeView()
    } else if selectedIndex == 1 {
      SecondView()
    }
      if showTabBar {


          Tabbar(selectedIndex: $selectedIndex, showMyLibraryView: .constant(true))
          .offset(y: 350)


      }
  }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(showTabBar: .constant(true))

    }
}


enum Pagee {
    case page1
    case page2
}
class ViewRouters: ObservableObject {

    @Published var currentPage: Pagee = .page1

}
