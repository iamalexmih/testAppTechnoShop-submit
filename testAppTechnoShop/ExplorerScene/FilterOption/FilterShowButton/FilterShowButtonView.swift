//
//  FilterShowButton.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import SwiftUI

struct FilterShowButtonView: View {
    
    var viewModel: FilterShowButtonViewModel
    
    var body: some View {
        Button(action: viewModel.action) {
            Image(Resources.Images.filter)
                .renderingMode(.template)
                .scaledToFit()
                .foregroundColor(Color("midnight"))
                .padding()
        }
    }
}

struct FilterShowButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterShowButtonView(viewModel: FilterShowButtonViewModel(action: { }))
    }
}
