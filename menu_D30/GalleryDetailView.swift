//
//  GalleryDetailView.swift
//  menu_D30
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/20.
//

import SwiftUI

struct GalleryDetailView: View {
    
    @Binding var selectedImage:String
    @Binding var galleryDetailView:Bool
    var body: some View {
        ZStack {
            Image(selectedImage)
            VStack {
                HStack {
                    Button(action: {
                        galleryDetailView = false
                    }, label: {
                        Image(systemName: "x.circle.fill")
                            .scaleEffect(2)
                        .foregroundColor(.brown)
                    })
                }.padding(.bottom, 660)
                
            }
            
        }
    }
}

#Preview {
    GalleryDetailView(selectedImage: Binding.constant("gallery1"), galleryDetailView: Binding.constant(true))
}
