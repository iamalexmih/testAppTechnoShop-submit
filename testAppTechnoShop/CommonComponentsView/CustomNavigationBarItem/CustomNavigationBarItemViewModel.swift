//
//  File.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import Foundation

class CustomNavigationBarItemViewModel {
    var action: () -> Void
    
    init( action: @escaping () -> Void) {
        self.action = action
    }
}
