//
//  CartView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var viewModel: CartViewModel
    @EnvironmentObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        VStack(spacing: screen.height / 19) {
            
            VStack {
                CustomNavigationBarItemView(
                    title: "Add address",
                    actionPrintMessage: "Add address",
                    buttonLabel: "",
                    buttonImageTrailingSide: Image(Resources.Images.location),
                    buttonImageLeadingSide: Image(Resources.Images.arrowBack),
                    alignmentTitle: .trailing,
                    sizeFontTitle: 15,
                    viewModel: CustomNavigationBarItemViewModel(action: {
                        tabViewRouter.currentPage = .explorer
                        tabViewRouter.showTabView()
                    })
                )
                .padding(.top, screen.height / 12)

                Text("My Cart")
                    .font(Font.markProBold(size: screen.height / 27.17))
                    .foregroundColor(Color(Resources.Colors.midnight))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 42)
            
            VStack(spacing: 23) {
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 40) {
                        ForEach(viewModel.basket) { itemBuy in
                            CellCartView(viewModel: CellCartViewModel(basket: itemBuy))
                        }
                    }
                }
                .padding(.top, screen.height / 13)
                
                Spacer()
                
                Divider()
                    .background(Color(Resources.Colors.divider))
                
                VStack(spacing: 12) {
                    HStack {
                        Text("Total")
                        Spacer()
                        Text("$\(viewModel.total) us")
                            .font(Font.markProBold(size: 15))
                    }
                    
                    HStack {
                        Text("Delivery")
                        Spacer()
                        Text(viewModel.delivery)
                            .font(Font.markProBold(size: 15))
                    }
                }
                .font(Font.markPro(size: 15))
                .foregroundColor(.white)
                .padding(.leading, 50)
                .padding(.trailing, 35)
                
                Divider()
                    .background(Color(Resources.Colors.divider))
                
                Button {
                    print("Checkout")
                } label: {
                    Text("Checkout")
                        .font(Font.markProBold(size: screen.height / 47.55))
                        .frame(width: screen.height / 3, height: screen.height / 17.6)
                        .background(Color(Resources.Colors.coral))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .padding(.bottom, 44)
                
            }
            .frame(width: screen.width, height: screen.height / 1.38)
            .background(Color(Resources.Colors.midnight))
            .cornerRadius(30)
        }
        .frame(width: screen.width,
               height: screen.height,
               alignment: .bottom)
        .onAppear {
            viewModel.getListCart()
            tabViewRouter.hideTabView()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartViewModel())
    }
}
