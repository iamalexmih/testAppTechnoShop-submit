//
//  ProductListModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import Foundation


struct ProductsListModel: Codable {
    let homeStore: [ProductModel]
    let bestSeller: [ProductModel]
}

struct ProductModel: Codable, Identifiable {
    let id: Int?
    let isNew: Bool?
    let title: String?
    let subtitle: String?
    let picture: String?
    let isBuy: Bool?
    let isFavorites: Bool?
    let priceWithout_discount: Int?
    let discountPrice: Int?
    
}
