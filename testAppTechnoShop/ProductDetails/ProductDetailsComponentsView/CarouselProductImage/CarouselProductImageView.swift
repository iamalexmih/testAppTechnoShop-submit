//
//  CarouselProductImageView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI

struct CarouselProductImageView: View {
    
    @EnvironmentObject var  productDetailsViewModel: ProductDetailsViewModel
    
    func imageProductCarusel(reader: GeometryProxy) -> some View {
        let screenSize = reader.size
        
        let itemWidth: CGFloat = screenSize.width * 0.55
        let itemHeight: CGFloat = itemWidth * 1.1
        
        let paddingX: CGFloat = (screenSize.width - itemWidth) / 2
        let spacing: CGFloat = 10
        
        return ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: spacing) {
                ForEach( productDetailsViewModel.images, id: \.self) { image in
                    CellCarouselProductView(viewModel: CellCarouselProductViewModel(images: image),
                                            screenSize: screenSize,
                                            width: itemWidth,
                                            height: itemHeight
                                            )
                    .environmentObject(productDetailsViewModel)
                }
            }
            .padding(.horizontal, paddingX)
        }
    }
    
    
    var body: some View {
        GeometryReader { reader in
            ZStack {
                imageProductCarusel(reader: reader)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
