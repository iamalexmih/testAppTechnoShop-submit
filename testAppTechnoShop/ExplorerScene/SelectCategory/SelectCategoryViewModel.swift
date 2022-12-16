//
//  SelectCategoryViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import Foundation



class SelectCategoryViewModel: ObservableObject {
    
    @Published var categories: [CellSelectCategoryModel] = []
    @Published var selectCategory = "Phones"
    
    func getCategoryView() {
        self.categories = CategoryManager.shared.getCategoryView()
    }
}
