//
//  ColorAndCapacityView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI

struct ColorAndCapacityView: View {
    
    @EnvironmentObject var  productDetailsViewModel: ProductDetailsViewModel
    
    var body: some View {
        VStack {
            Text("Select color and capacity")
                .font(Font.markProMedium(size: 16))
                .foregroundColor(Color(Resources.Colors.midnight))
            
            HStack (spacing: 20) {
                ZStack {
                    Circle()
                        .frame(width: 39)
                        .foregroundColor(Color(Resources.Colors.colorProductGold))
                    Image(Resources.Images.checkMark)
                }
                Circle()
                    .frame(width: 39)
                    .foregroundColor(Color(Resources.Colors.midnight))
                
                Spacer()
                
                Button {
                    productDetailsViewModel.sd = "128 GB"
                } label: {
                    Text("128 GB")
                }
                .foregroundColor(
                    productDetailsViewModel.sd == "128 GB" ?
                        .white : .gray)
                .font(Font.markProMedium(size: 13))
                .frame(width: 71, height: 30)
                .background(
                    productDetailsViewModel.sd == "128 GB" ?
                    Color(Resources.Colors.coral) : .clear)
                .cornerRadius(10)

                Button {
                    productDetailsViewModel.sd = "256 GB"
                } label: {
                    Text("256 GB")
                }
                .foregroundColor(
                    productDetailsViewModel.sd == "256 GB" ?
                        .white : .gray)
                .font(Font.markProMedium(size: 13))
                .frame(width: 71, height: 30)
                .background(
                    productDetailsViewModel.sd == "256 GB" ?
                    Color(Resources.Colors.coral) : .clear)
                .cornerRadius(10)
            }
        }
    }
}

