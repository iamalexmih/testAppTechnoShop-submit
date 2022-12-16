//
//  ViewForToolbarItem.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import SwiftUI

struct ExplorerNavigationItemsView: View {
    
    var viewModel: ExplorerNavigationItemsViewModel
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                HStack {
                    Image(Resources.Images.location)
                        .padding(.trailing, 11)
                    Text("Zihuatanejo, Gro")
                        .font(Font.markPro(size: 15))
                        .foregroundColor(Color(Resources.Colors.midnight))
                        .padding(.trailing, 8)
                    Image(Resources.Images.arrowDown)
                }
                
                Spacer()
                
                FilterShowButtonView(
                    viewModel: FilterShowButtonViewModel(
                        action: viewModel.action))
            }
        }
        .background(Color.clear)
    }
}

struct ToolbarItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorerNavigationItemsView(
            viewModel: ExplorerNavigationItemsViewModel(
                filterWindowShow: false,
                action: { }))
    }
}
