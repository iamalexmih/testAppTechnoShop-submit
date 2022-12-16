//
//  FilterShowButtonViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import Foundation


class FilterShowButtonViewModel {
    
    var action: () -> Void
    
    init( action: @escaping () -> Void) {
        self.action = action
    }
}
