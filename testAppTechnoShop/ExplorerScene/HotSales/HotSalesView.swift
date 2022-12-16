//
//  HotSalesView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 11.12.2022.
//

import SwiftUI

struct HotSalesView: View {
    
    @StateObject private var viewModel = HotSalesViewModel()
    @EnvironmentObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 23) {
                    ForEach(viewModel.products) { product in
                        NavigationLink {
                            ProductDetailsView(viewModel: ProductDetailsViewModel())
                                .environmentObject(tabViewRouter)
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            CellHotSalesView(viewModel: CellHotSalesViewModel(product: product))
                            
                        }
                    }
                }
                .padding(.horizontal)
            }
        } header: {
            HStack {
                Text("Hot sales")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.markProBold(size: 32))
                    .foregroundColor(Color(Resources.Colors.midnight))
                
                Button {
                    print("view all")
                } label: {
                    Text("view all")
                        .font(Font.markPro(size: 15))
                        .foregroundColor(Color(Resources.Colors.coral))
                }
            }
            .padding(.horizontal)
        }
        .background(Color.clear)
        .onAppear {
            viewModel.getListHotSales()
        }
    }
}

struct HotSalesView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesView()
    }
}
