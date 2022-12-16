//
//  CartModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import Foundation


struct CartModel: Codable, Identifiable {
    let basket: [ItemBuy]
    let delivery: String?
    let id: String?
    let total: Int?
}


struct ItemBuy: Codable, Identifiable {
    let id: Int?
    let images: String?
    let price: Int?
    let title: String?
}
