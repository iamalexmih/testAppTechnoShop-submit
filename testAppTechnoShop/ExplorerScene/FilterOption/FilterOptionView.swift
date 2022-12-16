//
//  FilterOptionView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import SwiftUI

struct FilterOptionView: View {
    
    @EnvironmentObject var explorerViewModel: ExplorerViewModel
    @EnvironmentObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                CustomNavigationBarItemView(title: "Filter options",
                                            actionPrintMessage: "close filter",
                                            buttonLabel: "Done",
                                            buttonImageTrailingSide: nil,
                                            buttonImageLeadingSide: Image(Resources.Images.buttonClose),
                                            alignmentTitle: .center,
                                            sizeFontTitle: 18,
                                            viewModel: CustomNavigationBarItemViewModel(action: {
                    explorerViewModel.closeFilterButtonPress()
                    tabViewRouter.showTabView()
                }))
                
                VStack(spacing: 16) {
                    FilterSelectView(filterTitle: "Brand",
                                     filterOption: "Samsung")
                    
                    FilterSelectView(filterTitle: "Price",
                                     filterOption: "$300 - $500")
                    
                    FilterSelectView(filterTitle: "Size",
                                     filterOption: "4.5to 5.5 inches")
                }
            }
            .padding(20)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity)
            .frame(height: screen.height / 2.39)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: Color(Resources.Colors.filteringPickerShadow), radius: 10, y: -5)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .background(Color.clear)
    }
}

struct FilterOptionView_Previews: PreviewProvider {
    static var previews: some View {
        FilterOptionView()
    }
}
