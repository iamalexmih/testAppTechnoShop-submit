//
//  CellCarouselProductView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI

struct CellCarouselProductView: View {
    
    var viewModel: CellCarouselProductViewModel
    
    let screenSize: CGSize
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { reader in
            
            let midX = reader.frame(in: .global).midX
            let distance = abs(screenSize.width / 2 - midX)
            let damping: CGFloat = 4
            let percentage = abs(distance / (screenSize.width / 2) / damping - 1)
            
            VStack {
                ImageView(imageUrl: viewModel.imageUrl!)
                    .scaledToFill()
                    .frame(height: height)
                    .cornerRadius(20)
            }
            .frame(maxHeight: .infinity)
            .scaleEffect(percentage)
            .shadow(color: Color(Resources.Colors.shadowCarouselProductDetails), radius: 14, y: 10)
        }
        .frame(width: width)
        .frame(maxHeight: .infinity)
    }
}
