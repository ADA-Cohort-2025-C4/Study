//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.
import SwiftUI

struct HomeView: View {
  @EnvironmentObject var router: Router
  
  var body: some View {
    BaseView(
      create: { HomeViewModel() }
    ) { _, _ in
      VStack {
        // MARK: Toolbar
        Toolbar(title: "C4 Practice", isPopButton: false)
        
        List {
          // MARK: Practice Architecture
          Section(header: Text("Practice")) {
            Tile(title: "Diary", subtitle: "Isla") {
              router.push(.diary)
            }
          }
            Tile(title: "Todo", subtitle: "Ari") {
                router.push(.todo)
            }
        }
      }
      
    }
  }
}

#Preview {
  BasePreview {
    HomeView()
  }
}

