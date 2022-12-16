//
//  CellCarouselProductViewModel.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import Foundation


class CellCarouselProductViewModel {
    var images: String = ""
    @Published var imageUrl: URL?
    
    init(images: String) {
        guard let url = URL(string: images) else { return }
        self.imageUrl = url
    }
}


