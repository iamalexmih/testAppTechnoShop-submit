//
//  SelectCategoryViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import Foundation


class CellSelectCategoryViewModel {
    
    var category: CellSelectCategoryModel
    var isSelect: Bool
    var labelTitle: String {
        category.labelTitle
    }
    
    var iconName: String {
        category.iconName
    }
    
    
    init(category: CellSelectCategoryModel, selectCategory: String) {
        self.category = category
        self.isSelect = category.labelTitle == selectCategory
    }
}
