//
//  TabViewRouter.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import Foundation



enum Page {
    case explorer
    case cart
    case favorite
    case userProfile
}


class TabViewRouter: ObservableObject {
        
    @Published var appearanceStateTabView: Bool = true
    @Published var currentPage: Page = .explorer
    
    func hideTabView() {
        appearanceStateTabView.toggle()
    }
    
    func showTabView() {
        appearanceStateTabView.toggle()
    }
}
