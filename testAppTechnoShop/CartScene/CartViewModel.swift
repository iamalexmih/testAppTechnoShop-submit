//
//  CartViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import Foundation

class CartViewModel: ObservableObject {
    
    @Published var cart: CartModel?
    @Published var basket: [ItemBuy] = []
    @Published var countItemInCart = 0
    
    var delivery: String {
        cart?.delivery ?? ""
    }

    var total: Int {
        cart?.total ?? 0
    }
    
    
    init() {
        NetworkManager.shared.fetchDataCart { cart in
            self.cart = cart
            self.basket = cart.basket
            self.countItemInCart = cart.basket.count
        }
    }
    
    func getListCart() {
        NetworkManager.shared.fetchDataCart { cart in
            self.cart = cart
            self.basket = cart.basket
        }
    }
}
