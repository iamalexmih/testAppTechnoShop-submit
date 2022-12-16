//
//  StepperForCartView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import SwiftUI

struct StepperForCartView: View {
    
    var viewModel: StepperForCartViewModel
    
    let width = screen.height / 32
    let height = screen.height / 14
    let sizeFontCount = screen.height / 47
    
    var body: some View {
        VStack(spacing: 5) {
            
            Button (action: viewModel.actionMinus) {
                Image(Resources.Images.minusIcon)
                    .frame(width: 15, height: 4)
            }
           

            Text("\(viewModel.count)")
                .font(Font.markProBold(size: sizeFontCount))
                .foregroundColor(.white)
            
            Button(action: viewModel.actionPlus) {
                Image(Resources.Images.plusIcon)
                    .frame(width: 15, height: 8)
            }
            
        }
        .frame(width: width, height: height)
        .background(Color(Resources.Colors.stepper))
        .cornerRadius(26)
    }
}

struct StepperForCartView_Previews: PreviewProvider {
    static var previews: some View {
        StepperForCartView(
            viewModel: StepperForCartViewModel(count: 0,
                                               actionMinus: {},
                                               actionPlus: {}))
    }
}
