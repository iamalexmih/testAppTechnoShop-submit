//
//  FeaturesView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI

struct FeaturesView: View {
    
    @EnvironmentObject var  productDetailsViewModel: ProductDetailsViewModel
    
    var body: some View {
        VStack {
            HStack(spacing: 65) {
                Text("Shop")
                    .font(Font.markProBold(size: screen.height / 40).bold())
                    .underline(color: Color(Resources.Colors.coral))
                Text("Details")
                    .font(Font.markPro(size: screen.height / 40))
                    .foregroundColor(.gray)
                Text("Features")
                    .font(Font.markPro(size: screen.height / 40))
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 45) {
                
                VStack {
                    Image(Resources.Images.cpuIcon)
                    Text(productDetailsViewModel.cpu)
                }
                
                VStack {
                    Image(Resources.Images.cameraIcon)
                    Text(productDetailsViewModel.camera)
                }
                
                VStack {
                    Image(Resources.Images.sdIcon)
                    Text(productDetailsViewModel.sd)
                }
                
                VStack {
                    Image(Resources.Images.ssdIcon)
                    Text(productDetailsViewModel.ssd)
                }
            }
            .font(Font.markPro(size: 11))
            .foregroundColor(Color(Resources.Colors.textGrayProductDetails))
        }
    }
}

