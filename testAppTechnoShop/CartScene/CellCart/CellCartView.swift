//
//  CellCartView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 14.12.2022.
//

import SwiftUI

struct CellCartView: View {
    
    @StateObject var viewModel: CellCartViewModel
    let heightCell = screen.height / 10.8
    let widthCell = screen.height / 2.4
    
    var body: some View {
        HStack {
            
            ImageView(imageUrl: viewModel.picture!)
                .frame(width: heightCell, height: heightCell)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 6) {
                Text(viewModel.title)
                    .font(Font.markProMedium(size: heightCell / 4.4))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                Text("$ \(viewModel.price)")
                    .font(Font.markProMedium(size: heightCell / 4.4))
                    .foregroundColor(Color(Resources.Colors.coral))
            }
            .bold()
            .frame(width: widthCell / 1.9, alignment: .leading)
            
            StepperForCartView(
                viewModel:
                    StepperForCartViewModel(count: viewModel.count,
                                                   actionMinus: viewModel.countMinus,
                                                   actionPlus: viewModel.countplus))
            
            Button {
                print("del item")
            } label: {
                Image(Resources.Images.basket)
            }
            .padding(.leading, 17)

        }
        .frame(height: heightCell)
        .frame(width: widthCell)
    }
}

struct CellCartView_Previews: PreviewProvider {
    static var previews: some View {
        CellCartView(
            viewModel: CellCartViewModel(
                basket: ItemBuy(id: 3242,
                                images: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-silver-select?wid=470&hei=556&fmt=jpeg&qlt=95&.v=1631652954000",
                                price: 3000,
                                title: "Sumsung")))
    }
}
