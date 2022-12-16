//
//  CellBestSellerViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import Foundation


class CellBestSellerViewModel: ObservableObject {
    
    
    @Published var isFavorites: Bool
    var product: ProductModel
    
    var title: String {
        product.title ?? ""
    }
    
    var picture: URL? {
        guard let url = URL(string: product.picture ?? "none") else { return nil}
        return url
    }
    
    var discountPrice: Int {
        product.discountPrice ?? 0
    }
    
    var priceWithoutDiscount: Int {
        product.priceWithout_discount ?? 0
    }
        
    
    init(product: ProductModel) {
        self.product = product
        self.isFavorites = product.isFavorites ?? false
    }
}
