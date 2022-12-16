//
//  CustomNavigationBarItemView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import SwiftUI

struct CustomNavigationBarItemView: View {
    
    let title: String
    let actionPrintMessage: String
    let buttonLabel: String
    let buttonImageTrailingSide: Image?
    let buttonImageLeadingSide: Image?
    let alignmentTitle: Alignment
    let sizeFontTitle: CGFloat
    var viewModel: CustomNavigationBarItemViewModel
    
    var body: some View {
        HStack {
            HStack {
                Button(action: viewModel.action) {
                    LabelButton(buttonImage: buttonImageLeadingSide!)
                }
                Text(title)
                    .frame(maxWidth: .infinity, alignment: alignmentTitle)
                    .font(Font.markProMedium(size: sizeFontTitle))
                    .foregroundColor(Color(Resources.Colors.midnight))
                Button {
                    print(actionPrintMessage)
                } label: {
                    if buttonLabel == ""{
                        ZStack {
                            buttonImageTrailingSide?
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14)
                                .foregroundColor(.white)
                        }
                        .frame(width: 37, height: 37)
                        .background(Color(Resources.Colors.coral))
                        .cornerRadius(10)
                    } else {
                        Text(buttonLabel)
                            .font(Font.markProMedium(size: 18))
                            .frame(width: 86, height: 37)
                            .foregroundColor(.white)
                            .background(Color(Resources.Colors.coral))
                            .cornerRadius(10)
                    }
                }
            }
            .padding(.bottom, 15)
        }
    }
}

struct CustomNavigationBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarItemView(title: "Filter options",
                                    actionPrintMessage: "close filter",
                                    buttonLabel: "",
                                    buttonImageTrailingSide:
                                        Image(Resources.Images.arrowDown),
                                    buttonImageLeadingSide:
                                        Image(Resources.Images.arrowBack),
                                    alignmentTitle: .center,
                                    sizeFontTitle: 18,
                                    viewModel: CustomNavigationBarItemViewModel(action: {}))
    }
}
