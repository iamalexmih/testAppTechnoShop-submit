//
//  SplashScreenView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @StateObject var tabViewRouter: TabViewRouter = TabViewRouter()
    @StateObject var cartViewModel: CartViewModel = CartViewModel()
    @State var isActive = false
    
    var body: some View {
        if isActive {
            MainView()
                .environmentObject(tabViewRouter)
                .environmentObject(cartViewModel)
        } else {
            ZStack {
                Circle()
                    .frame(width: 132)
                    .foregroundColor(Color(Resources.Colors.coral))

                VStack(alignment: .leading) {
                    Text ("Ecommerce")
                    Text ("Concept")
                }
                .font(Font.markProHeavy(size: 30))
                .foregroundColor(.white)
                .offset(x: 55)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(Resources.Colors.midnight))
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
