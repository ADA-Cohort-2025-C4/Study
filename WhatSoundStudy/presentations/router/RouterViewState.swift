//  Copyright © 2025 ADA 4th Challenge4 Practice. All rights reserved.

enum RootPage {
    case splash
    case home
}

enum SubPage {
    case diary
    
}

struct RouterViewState {
    let rootPage: RootPage
    let subPages: [SubPage]
    
    func copy(
        rootPage: RootPage? = nil,
        subPages: [SubPage]? = nil
    ) -> RouterViewState {
        return RouterViewState(
            rootPage: rootPage ?? self.rootPage,
            subPages: subPages ?? self.subPages
        )
    }
}
