//
//  HotSalesViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 11.12.2022.
//

import Foundation


class HotSalesViewModel: ObservableObject {
    
    @Published var products: [ProductModel] = []

    func getListHotSales() {
        NetworkManager.shared.fetchDataExplorer { products in
            self.products = products.homeStore
        }
    }
}

