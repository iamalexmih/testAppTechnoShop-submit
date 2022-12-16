//
//  ExplorerView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import SwiftUI

struct ExplorerView: View {
    
    @StateObject var viewModel = ExplorerViewModel()
    @EnvironmentObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                ExplorerNavigationItemsView(
                    viewModel:
                        ExplorerNavigationItemsViewModel(
                            filterWindowShow: viewModel.showFilter,
                            action: {
                                withAnimation {
                                    tabViewRouter.hideTabView()
                                    viewModel.showFilterButtonPress()
                                }
                            }))
                
                ScrollView(.vertical, showsIndicators: false) {
                    SelectCategoryView()
                    SearchView()
                        .padding(.top, 35)
                    HotSalesView()
                        .environmentObject(tabViewRouter)
                    BestSellerView()
                }
            }
                        
            if viewModel.showFilter {
                    FilterOptionView()
                    .environmentObject(viewModel)
                    .environmentObject(tabViewRouter)
                    .transition(.move(edge: .bottom))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("bg"))
    }
}

