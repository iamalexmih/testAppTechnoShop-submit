//
//  CellCartViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import Foundation


class CellCartViewModel: ObservableObject {

    var basket: ItemBuy
    @Published var count = 1
    
    var title: String {
        basket.title ?? "none"
    }
    
    var price: Int {
        basket.price ?? 0
    }

    var picture: URL? {
        guard let url = URL(string: basket.images ?? "none") else { return nil}
        return url
    }
    
    
    init(basket: ItemBuy) {
        self.basket = basket
    }
    
    
    func countMinus() {
        if count > 0 {
            count -= 1
        }
    }
    
    
    func countplus() {
        count += 1
    }
}
