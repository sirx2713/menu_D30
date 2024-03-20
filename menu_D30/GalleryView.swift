//
//  GalleryView.swift
//  menu_D30
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/20.
//

import SwiftUI

struct GalleryView: View {
    
    @State var selectedImage = ""
    @State var galleryDetailSheet = false
    
    @State var galleryImages = [Gallery_Logic]()
    var getData = DataServices()
    
    var body: some View {
        //LazyVGrid(columns: [GridItem(spacing: 10), GridItem(spacing: 10)], spacing: 20){
        NavigationStack{ List(galleryImages){pic in
                
                Image(pic.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding(.horizontal, 5)
                    .onTapGesture {
                        selectedImage = pic.imageName
                        galleryDetailSheet = true
                    }

        }
        .sheet(isPresented: $galleryDetailSheet, content: {
            GalleryDetailView(selectedImage: $selectedImage, galleryDetailView: $galleryDetailSheet)
        })
        .onAppear(perform: {
            galleryImages = getData.galleryData()
        })
            
        }
    }
}

#Preview {
    GalleryView()
}
