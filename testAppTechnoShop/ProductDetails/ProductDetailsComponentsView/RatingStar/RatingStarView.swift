//
//  RatingStarView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI

struct RatingStarView: View {
    
    var rating: CGFloat
    
    var body: some View {
        let stars = HStack(spacing: 9) {
            ForEach(0..<5, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 18, height: 18)
            }
        }
        
        stars.overlay(
            GeometryReader { geometry in
                let width = rating / CGFloat(5) * geometry.size.width
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: width)
                        .foregroundColor(.yellow)
                }
            }
                .mask(stars)
        )
        .foregroundColor(Color(Resources.Colors.lightGray))
    }
}

struct RatingStarView_Previews: PreviewProvider {
    static var previews: some View {
        RatingStarView(rating: 2.5)
    }
}
