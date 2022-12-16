//
//  ButtonCustomTabView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import SwiftUI

struct LabelButtonCustomTabView: View {
    
    @EnvironmentObject var tabViewRouter: TabViewRouter
    let nameTab: Page
    let image: Image
    let titleTab: String
    
    var body: some View {
           
        if tabViewRouter.currentPage == nameTab {
                HStack {
                    Text("●")
                    Text(titleTab)
                        .font(Font.markProMedium(size: 15))
                }
            } else {
                image
                    .renderingMode(.template)
                    .foregroundColor(Color.white)
        }
    }
}
