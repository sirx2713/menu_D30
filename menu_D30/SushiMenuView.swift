//
//  SushiMenuView.swift
//  menu_D30
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/20.
//

import SwiftUI

struct SushiMenuView: View {
    
    @State var sushiItems = [SushiMenu_Logic]()
    @State var selectedSushi = ""
    @State var selectedSushiName = ""
    @State var selectedSushiPrice = ""
    @State var sushiSheetVisible = false
    
    var fetchData = DataServices()
    
    var body: some View {
        List(sushiItems){sushi in
            HStack{
                Image(sushi.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                Text(sushi.name)
                    .bold()
                Spacer()
                Text("$" + sushi.price)
            }.onTapGesture {
                selectedSushi = sushi.imageName
                selectedSushiName = sushi.name
                selectedSushiPrice = sushi.price
                sushiSheetVisible = true
            }
            
        }
        .listStyle(.plain)
        .sheet(isPresented: $sushiSheetVisible, content: {
            SushiSheetView(selectedSushi: $selectedSushi, selectedSushiName: $selectedSushiName, selectedSushiPrice: $selectedSushiPrice, sushiSheetVisible: $sushiSheetVisible)
        })
        .onAppear(perform: {
            sushiItems = fetchData.sushiData()
        })
    }
}

#Preview {
    SushiMenuView()
}
