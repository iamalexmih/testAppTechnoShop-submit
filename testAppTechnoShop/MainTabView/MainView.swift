//
//  MainView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var tabViewRouter: TabViewRouter
    @EnvironmentObject var cartViewModel: CartViewModel
    
    var body: some View {
        ZStack {
            switch tabViewRouter.currentPage {
            case .explorer:
                NavigationView {
                    ExplorerView()
                        .environmentObject(tabViewRouter)
                }
            case .cart:
                CartView()
                    .environmentObject(cartViewModel)
                    .environmentObject(tabViewRouter)
            case .favorite:
                FavoriteView()
            case .userProfile:
                UserProfileView()
            }
            
            if tabViewRouter.appearanceStateTabView {
                CustomTabView()
                    .environmentObject(cartViewModel)
            }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(TabViewRouter())
            .environmentObject(CartViewModel())
    }
}
