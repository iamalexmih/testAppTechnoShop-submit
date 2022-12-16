//
//  SelectCategoryView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import SwiftUI

struct CellSelectCategoryView: View {
    
    let viewModel: CellSelectCategoryViewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 7) {
                ZStack {
                    Circle()
                        .foregroundColor(viewModel.isSelect ?
                                         Color(Resources.Colors.coral) : Color.white)
                        
                    Image(viewModel.iconName)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.4)
                        .foregroundColor(viewModel.isSelect ?
                                         Color.white : Color.gray)
                }
                
                Text(viewModel.labelTitle)
                    .font(Font.markProMedium(size: 12))
                    .foregroundColor(
                        viewModel.isSelect ?
                        Color(Resources.Colors.coral) : Color(Resources.Colors.midnight))
            }
        }
        .frame(width: 71,
               height: 93,
               alignment: .center)
        .shadow(color: Color.red.opacity(0.15), radius: 4)
    }
}
