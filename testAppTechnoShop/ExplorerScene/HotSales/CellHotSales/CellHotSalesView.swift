//
//  CellHotSalesView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 11.12.2022.
//

import SwiftUI

struct CellHotSalesView: View {
    
    var viewModel: CellHotSalesViewModel
    
    var body: some View {
        HStack {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                        Text("New")
                        .foregroundColor(.white)
                            .font(Font.markProBold(size: 10))
                            .frame(width: 27, height: 27)
                            .background(Color(Resources.Colors.coral))
                            .clipShape(Circle())
                            .padding(.top, 14)
                            .opacity(viewModel.isNew ? 1 : 0)
                        
                    VStack(alignment: .leading, spacing: 5) {
                        Text(viewModel.title)
                            .font(Font.markProHeavy(size: 25))
                        
                        Text(viewModel.subtitle)
                            .font(Font.markPro(size: 11))
                    }
                    .foregroundColor(Color.white)
                    .padding(.top, 18)
                    
                    Button {
                        print("Buy now!")
                    } label: {
                        Text("Buy now!")
                            .font(Font.markProBold(size: 12))
                            .frame(width: 98, height: 23)
                            .foregroundColor(Color(Resources.Colors.midnight))
                            .background(Color.white)
                            .cornerRadius(5)
                    }
                    .padding(.top, 26)
                    .padding(.bottom, 26)
                }
                .padding(.leading, 25)
                .frame(width: 140, height: 182)
                .background(Color("bgCellHotSales").opacity(0.7))
                .cornerRadius(10)
                Spacer()
            }
        }
        .frame(width: 378, height: 182)
        .background(ImageView(imageUrl: viewModel.picture!))
        .cornerRadius(10)
    }
}

struct CellHotSalesView_Previews: PreviewProvider {
    static var previews: some View {
        CellHotSalesView(
            viewModel: CellHotSalesViewModel(
                product: ProductModel(id: 23423,
                                      isNew: true,
                                      title: "Iphone",
                                      subtitle: "Súper. Mega. Rápido.",
                                      picture: "none",
                                      isBuy: nil,
                                      isFavorites: nil,
                                      priceWithout_discount: 32432,
                                      discountPrice: 2432)))
    }
}
