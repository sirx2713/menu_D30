//
//  ContentView.swift
//  menu_D30
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            SushiMenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Sushi Menu")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2.crop.square.stack")
                        Text("Gallery")
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
