//
//  SelectCategoryView.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 10.12.2022.
//

import SwiftUI

struct SelectCategoryView: View {
   
    let layout = [GridItem(.adaptive(minimum: screen.width / 2.4))]
    @StateObject private var viewModel = SelectCategoryViewModel()
    
    var body: some View {
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 23) {
                        ForEach(viewModel.categories, id: \.labelTitle) { category in
                            CellSelectCategoryView(viewModel: CellSelectCategoryViewModel(category: category, selectCategory: viewModel.selectCategory))
                                .onTapGesture {
                                    viewModel.selectCategory = category.labelTitle
                                }
                        }
                    }
                    .padding(.horizontal)
                }
            } header: {
                HStack {
                    Text("Select Category")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.markProBold(size: 32))
                        .foregroundColor(Color(Resources.Colors.midnight))
                    
                    Button {
                        print("view all")
                    } label: {
                        Text("view all")
                            .font(Font.markPro(size: 15))
                            .foregroundColor(Color(Resources.Colors.coral))
                    }
                }
                .padding(.horizontal)
            }
            .onAppear {
                viewModel.getCategoryView()
            }
    }
}

struct SelectCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCategoryView()
    }
}
