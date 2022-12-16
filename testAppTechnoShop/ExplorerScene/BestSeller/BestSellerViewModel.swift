//
//  BestSellerViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import Foundation


class BestSellerViewModel: ObservableObject {
    
    @Published var productsBestSeller: [ProductModel] = []

    func getListBestSeller() {
        NetworkManager.shared.fetchDataExplorer { products in
            self.productsBestSeller = products.bestSeller
        }
    }
    
}
