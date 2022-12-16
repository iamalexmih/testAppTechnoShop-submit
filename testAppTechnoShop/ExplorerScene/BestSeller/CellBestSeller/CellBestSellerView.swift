//
//  CellBestSellerView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import SwiftUI

struct CellBestSellerView: View {
    
    @StateObject var viewModel: CellBestSellerViewModel
    
    var body: some View {
        ZStack {
    
            VStack {
                ImageView(imageUrl: viewModel.picture!)
                    .frame(width: 181, height: 168)
                    .frame(height: 177)
                    .background(Color.white)
                
                VStack(alignment: .leading) {
                    HStack(alignment: .bottom) {
                        Text("\(viewModel.discountPrice)")
                            .font(Font.markProBold(size: 16))
                        Text("\(viewModel.priceWithoutDiscount)")
                            .font(Font.markPro(size: 10))
                            .foregroundColor(Color(Resources.Colors.lightGray))
                            .strikethrough()
                    }
                    
                    Text("\(viewModel.title)")
                        .font(Font.markPro(size: 10))
                    Spacer()
                }
                .foregroundColor(Color(Resources.Colors.midnight))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding(.horizontal, 21)
            }
            
            ButtonIsFavoriteView(isFavorite: viewModel.isFavorites,
                                 action: {
                viewModel.isFavorites.toggle()
            })
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .topTrailing)
                .offset(x: -16, y: 11)
            
        }
        .frame(width: 181, height: 227)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color(Resources.Colors.shadowBestSeller), radius: 5)
    }
}

struct CellBestSellerView_Previews: PreviewProvider {
    static var previews: some View {
        CellBestSellerView(
            viewModel: CellBestSellerViewModel(
                product: ProductModel(id: 23423,
                                      isNew: false,
                                      title: "Iphone",
                                      subtitle: "Súper. Mega. Rápido.",
                                      picture: "none",
                                      isBuy: nil,
                                      isFavorites: nil,
                                      priceWithout_discount: 1500,
                                      discountPrice: 900)))
    }
}
