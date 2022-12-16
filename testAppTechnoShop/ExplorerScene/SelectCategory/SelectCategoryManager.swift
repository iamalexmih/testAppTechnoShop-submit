//
//  DataManager.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import Foundation



class CategoryManager {
    
    static let shared = CategoryManager()
    
    private init() { }
    
    func getCategoryView() -> [CellSelectCategoryModel] {
        return [
            CellSelectCategoryModel(labelTitle: "Phones", iconName: "phoneIconCategory"),
            CellSelectCategoryModel(labelTitle: "Copmuter", iconName: "copmuterIconCategory"),
            CellSelectCategoryModel(labelTitle: "Health", iconName: "healthIconCategory"),
            CellSelectCategoryModel(labelTitle: "Books", iconName: "bookIconCategory"),
            CellSelectCategoryModel(labelTitle: "Home", iconName: "bookIconCategory")
        ]
    }
}
