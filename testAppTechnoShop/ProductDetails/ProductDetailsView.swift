//
//  ProductDetailsView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import SwiftUI

struct ProductDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var tabViewRouter: TabViewRouter
    @StateObject var viewModel: ProductDetailsViewModel
    
    var body: some View {
        VStack {
            CustomNavigationBarItemView(
                title: "Product Details",
                actionPrintMessage: "Add address",
                buttonLabel: "",
                buttonImageTrailingSide: Image(Resources.Images.cartIconTabView),
                buttonImageLeadingSide: Image(Resources.Images.arrowBack),
                alignmentTitle: .center,
                sizeFontTitle: 18,
                viewModel: CustomNavigationBarItemViewModel(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    tabViewRouter.showTabView()
                })
            )
            .padding(.horizontal, 42)
            .padding(.top, screen.height / 12)
            
            CarouselProductImageView()
                .environmentObject(viewModel)
            
            Spacer()
            
            VStack(spacing: screen.height / 37) {
                HStack {
                    
                    Text(viewModel.title)
                        .font(Font.markProMedium(size: screen.height / 32))
                        .foregroundColor(Color(Resources.Colors.midnight))
                    
                    Spacer()
                    
                    Button {
                        print("add favorite")
                    } label: {
                        LabelButton(buttonImage: Image(Resources.Images.favoriteIconTabView))
                    }
                }
                HStack(spacing: 9) {
                    RatingStarView(rating: viewModel.rating)
                    Spacer()
                }
                
                FeaturesView()
                    .environmentObject(viewModel)
                
                ColorAndCapacityView()
                    .environmentObject(viewModel)
                
                Button {
                    print("Checkout")
                } label: {
                    HStack {
                        Text("Add to Cart")
                        Spacer()
                        Text("$ \(viewModel.price)")
                    }
                    .padding(.horizontal, 35)
                    .font(Font.markProBold(size: screen.height / 47.55))
                    .frame(width: screen.height / 3, height: screen.height / 17.6)
                    .background(Color(Resources.Colors.coral))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                }
            }
            .padding(20)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity)
            .frame(height: screen.height / 2.1)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: Color(Resources.Colors.filteringPickerShadow),
                    radius: 10, y: -5)
        }
        .ignoresSafeArea()
        
        .onAppear {
            viewModel.getProductDetails()
            tabViewRouter.hideTabView()
        }
    }
}


