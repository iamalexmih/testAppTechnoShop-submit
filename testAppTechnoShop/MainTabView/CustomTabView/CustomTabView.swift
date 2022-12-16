//
//  CustomTabView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import SwiftUI


struct CustomTabView: View {
    
    @EnvironmentObject var tabViewRouter: TabViewRouter
    @EnvironmentObject var cartViewModel: CartViewModel
        
    var body: some View {
        VStack {
            Spacer()
    
            ZStack {
                
                HStack(spacing: 52) {
                    Button {
                        tabViewRouter.currentPage = .explorer
                    } label: {
                        LabelButtonCustomTabView(nameTab: .explorer,
                                                 image: Image(systemName: "list.dash"),
                                                 titleTab: "Explorer")
                        .environmentObject(tabViewRouter)
                    }
                    .foregroundColor(Color.white)
                    
                    
                    Button {
                        tabViewRouter.currentPage = .cart
                    } label: {
                        HStack {
                            LabelButtonCustomTabView(nameTab: .cart,
                                                     image: Image(Resources.Images.cartIconTabView),
                                                     titleTab: "Cart")
                            .environmentObject(tabViewRouter)
                            
                            if cartViewModel.countItemInCart > 0 {
                                Text("\(cartViewModel.basket.count)")
                                    .font(Font.markProMedium(size: 14))
                                    .foregroundColor(Color(Resources.Colors.coral))
                                    .padding(.leading, 1)
                                    .offset(y: -10)
                            }
                        }
                    }
                    .foregroundColor(Color.white)
                    
                    
                    Button {
                        tabViewRouter.currentPage = .favorite
                    } label: {
                        LabelButtonCustomTabView(nameTab: .favorite,
                                                 image: Image(Resources.Images.favoriteIconTabView),
                                                 titleTab: "Favorite")
                        .environmentObject(tabViewRouter)
                    }
                    .foregroundColor(Color.white)
                    
                    
                    Button {
                        tabViewRouter.currentPage = .userProfile
                    } label: {
                        LabelButtonCustomTabView(nameTab: .userProfile,
                                                 image: Image(Resources.Images.userProfileIconTabView),
                                                 titleTab: "Profile")
                        .environmentObject(tabViewRouter)
                    }
                    .foregroundColor(Color.white)
                }
                .frame(maxWidth: .infinity, maxHeight: 72, alignment: .center)
                .background(Color("midnight"))
                .cornerRadius(30)
            }
        }
        .background(Color.clear)
        .ignoresSafeArea()
    
    }
}




struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
            .environmentObject(TabViewRouter())
            .environmentObject(CartViewModel())
    }
}
