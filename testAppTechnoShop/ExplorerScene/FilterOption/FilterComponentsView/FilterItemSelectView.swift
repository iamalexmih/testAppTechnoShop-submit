//
//  FilterSelectView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 13.12.2022.
//

import SwiftUI

struct FilterSelectView: View {
    
    let filterTitle: String
    let filterOption: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(filterTitle)
                .font(Font.markProMedium(size: 18))
            
            HStack {
                Text(filterOption)
                    .font(Font.markPro(size: 18))
                    .padding(.leading, 14)
                Spacer()
                Image(Resources.Images.arrowDown)
                    .padding(.trailing, 14)
            }
            
            .frame(height: 37)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(5)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(Resources.Colors.filteringPickerBorder), lineWidth: 1)
            }
        }
        .foregroundColor(Color(Resources.Colors.midnight))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FilterSelectView_Previews: PreviewProvider {
    static var previews: some View {
        FilterSelectView(filterTitle: "Brand", filterOption: "Samsung")
    }
}
