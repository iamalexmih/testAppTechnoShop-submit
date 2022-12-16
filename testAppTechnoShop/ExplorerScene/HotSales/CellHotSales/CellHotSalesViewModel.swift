//
//  CellHotSalesViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 11.12.2022.
//

import Foundation



class CellHotSalesViewModel {
    
    var product: ProductModel
    
    var isNew: Bool {
        product.isNew ?? false
    }
    
    var title: String {
        product.title ?? ""
    }
    
    var subtitle: String {
        product.subtitle ?? ""
    }
    
    var picture: URL? {
        guard let url = URL(string: product.picture ?? "none") else { return nil}
        return url
    }
    
    init(product: ProductModel) {
        self.product = product
    }
}
