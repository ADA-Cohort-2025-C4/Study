//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.

import SwiftUI

@main
struct Main: App {
    @StateObject var router = Router()
    var body: some Scene {
        WindowGroup {
            RouterView()
        }.environmentObject(router)
    }
}
