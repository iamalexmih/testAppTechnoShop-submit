//
//  StepperForCartViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import Foundation


class StepperForCartViewModel: ObservableObject {
    
    @Published var count: Int
    var actionMinus: () -> Void
    var actionPlus: () -> Void
    
    init(count: Int, actionMinus: @escaping () -> Void, actionPlus: @escaping () -> Void) {
        self.count = count
        self.actionMinus = actionMinus
        self.actionPlus = actionPlus
    }
}
