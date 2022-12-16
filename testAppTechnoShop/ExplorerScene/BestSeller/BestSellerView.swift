//
//  BestSellerView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import SwiftUI

struct BestSellerView: View {
    
    @StateObject private var viewModel = BestSellerViewModel()
    
    private let columns = [
        GridItem(.adaptive(minimum: 180), spacing: 14),
        GridItem(.adaptive(minimum: 180))
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 12
            ) {
                Section{
                    ForEach(viewModel.productsBestSeller) { product in
                        NavigationLink {
                            ProductDetailsView(viewModel: ProductDetailsViewModel())
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            CellBestSellerView(viewModel: CellBestSellerViewModel(product: product))
                        }
                    }
                } header: {
                    HStack {
                        Text("Best Seller")
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
            }
            .padding()
        }
        
        .onAppear {
            viewModel.getListBestSeller()
        }
    }
}

struct BestSellerView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerView()
    }
}
