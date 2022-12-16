//
//  LabelButton.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import SwiftUI

struct LabelButton: View {
    
    let buttonImage: Image
    
    var body: some View {
        buttonImage
            .frame(width: 37, height: 37)
            .background(Color(Resources.Colors.midnight))
            .cornerRadius(10)
    }
}

struct LabelButton_Previews: PreviewProvider {
    static var previews: some View {
        LabelButton(buttonImage: Image(Resources.Images.arrowBack))
    }
}
