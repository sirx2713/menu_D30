//
//  SushiSheetView.swift
//  menu_D30
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/20.
//

import SwiftUI

struct SushiSheetView: View {
    
    @Binding var selectedSushi:String
    @Binding var selectedSushiName:String
    @Binding var selectedSushiPrice:String
    @Binding var sushiSheetVisible:Bool
    
    var body: some View {
        VStack{
            ZStack {
                Image(selectedSushi)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .ignoresSafeArea()            }
            Spacer()
            VStack(alignment: .center) {
                Text(selectedSushiName)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.brown)
                Text(selectedSushiName + " is one of the best sushi we have ever made. Every taste tells our tale, a journey of many ingredients")
                    .multilineTextAlignment(.center)
                    .padding()
                Text("$" + selectedSushiPrice)
                    .padding()
                Spacer()
            }.padding(.top)
            
            Divider()
            Button(action: {
                sushiSheetVisible = false
            }, label: {
                VStack {
                    Text("Hungry Already?")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Sushi is Ready!")
                }.foregroundColor(.red)
            })
        }
    }
}

#Preview {
    SushiSheetView(selectedSushi: Binding.constant("avocado-maki"), selectedSushiName: Binding.constant("Avocado Maki"), selectedSushiPrice: Binding.constant("1.99"), sushiSheetVisible: Binding.constant(true))
}
