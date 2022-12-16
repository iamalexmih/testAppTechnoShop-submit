//
//  CourseImageView.swift
//  SwiftBookCoursesSwiftUI
//
//  Created by Алексей Попроцкий on 07.12.2022.
//

import SwiftUI

struct ImageView: View {
        
    let imageUrl: URL
    
    var body: some View {
        AsyncImage(url: imageUrl,
                   transaction: Transaction(animation: .easeInOut)
        ) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success (let image ):
                image
                    .resizable()
                    .scaledToFill()
                    .transition(.scale(scale: 0.1, anchor: .center))
                
            case .failure:
                Image(systemName: "photo.artframe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70)
                    .opacity(0.1)
            default:
                EmptyView()
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageUrl: URL(string: "https://static.digit.in/default/942998b8b4d3554a6259aeb1a0124384dbe0d4d5.jpeg")!)
    }
}
