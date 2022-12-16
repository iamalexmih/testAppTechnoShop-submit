//
//  Product DetailsViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import Foundation
import Combine


class ProductDetailsViewModel: ObservableObject {
    
    @Published var isFavorites: Bool = false
    @Published var sd: String = ""
    var cpu: String = ""
    var camera: String = ""
    var capacity: [String] = []
    var color: [String] = []
    var id: String = ""
    var images: [String] = []
    var price: Int = 0
    var rating: Double = 0.0
    var ssd: String = ""
    var title: String = ""
    
    
    func getProductDetails() {
        NetworkManager.shared.fetchDataProductDetails { productDetails in
            self.cpu = productDetails.CPU ?? ""
            self.camera = productDetails.camera ?? ""
            self.capacity = productDetails.capacity ?? []
            self.color = productDetails.color ?? []
            self.id = productDetails.id ?? ""
            self.images = productDetails.images ?? []
            self.isFavorites = productDetails.isFavorites ?? false
            self.price = productDetails.price ?? 0
            self.rating = productDetails.rating ?? 0.0
            self.sd = productDetails.sd ?? ""
            self.ssd = productDetails.ssd ?? ""
            self.title = productDetails.title ?? ""
        }
    }
    
}
