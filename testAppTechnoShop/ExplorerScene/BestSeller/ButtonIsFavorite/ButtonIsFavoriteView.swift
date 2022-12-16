//
//  ButtonIsFavorite.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import SwiftUI

struct ButtonIsFavoriteView: View {
    
    var isFavorite: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .frame(width: 25)
                    .foregroundColor(.white)
                    .shadow(radius: 5).opacity(0.5)
                
                if isFavorite {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 11, height: 10)
                        .foregroundColor(Color(Resources.Colors.coral))
                } else {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 11, height: 10)
                        .foregroundColor(Color(Resources.Colors.coral))
                }
    
            }
        }
    }
}

struct ButtonIsFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonIsFavoriteView(isFavorite: true, action: {})
    }
}
