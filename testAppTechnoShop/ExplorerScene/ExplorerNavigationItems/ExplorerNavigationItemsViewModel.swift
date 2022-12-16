//
//  NavigationItemsViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import Foundation


class ExplorerNavigationItemsViewModel {
    
    var filterWindowShow: Bool
    var action: () -> Void
    
    
    init(filterWindowShow: Bool, action: @escaping () -> Void) {
        self.filterWindowShow = filterWindowShow
        self.action = action
    }
    
}
