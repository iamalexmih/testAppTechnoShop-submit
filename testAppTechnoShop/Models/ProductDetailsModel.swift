//
//  ProductDetailsModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import Foundation


struct ProductDetailsModel: Codable, Identifiable {
    let CPU: String?
    let camera: String?
    let capacity: [String]?
    let color: [String]?
    let id: String?
    let images: [String]?
    let isFavorites: Bool?
    let price: Int?
    let rating: Double?
    let sd: String?
    let ssd: String?
    let title: String?
}

