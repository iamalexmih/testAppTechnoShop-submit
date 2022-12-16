//
//  SearchView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 11.12.2022.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchTextField = ""
    
    var body: some View {
        GeometryReader { geometry in
            
            HStack(spacing: 11) {
                
                HStack {
                    Image(Resources.Images.magnifyingGlass)
                        .renderingMode(.template)
                        .foregroundColor(Color(Resources.Colors.coral))
                        .padding(.leading, 24)
                    
                    TextField(text: $searchTextField) {
                        HStack {
                            Text("Search")
                                .font(Font.markPro(size: 12))
                                .foregroundColor(Color(Resources.Colors.midnight).opacity(0.5))
                        }
                    }
                }
                .frame(height: geometry.size.height)
                .background(Color.white)
                .cornerRadius(50)
                
                Button {
                    print("button pressed search by use QRCode")
                } label: {
                    ZStack {
                        Circle()
                            .foregroundColor(Color(Resources.Colors.coral))
                        Image(Resources.Images.qrcode)
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.white)
                    }
                }

            }
        }
        .frame(height: 34.0)
        .shadow(color: Color(Resources.Colors.shadowSearchView), radius: 5)
        .padding(.horizontal, 32)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
