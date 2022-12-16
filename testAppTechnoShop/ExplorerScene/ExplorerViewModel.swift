//
//  ExplorerViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import Foundation


class ExplorerViewModel: ObservableObject {
    
    @Published var showFilter = false
    
    
    func showFilterButtonPress() {
        showFilter.toggle()
    }
    
    func closeFilterButtonPress() {
        showFilter.toggle()
    }
}
