//
//  CourseImageViewModel.swift
//  SwiftBookCoursesSwiftUI
//
//  Created by Алексей Попроцкий on 07.12.2022.
//

import Foundation



class ImageViewModel {

    var imageUrl: URL?

    required init(imageForHotSales imageUrl: URL?) {
        self.imageUrl = imageUrl
    }
}
