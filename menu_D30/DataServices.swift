//
//  DataServices.swift
//  menu_D30
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/20.
//

import Foundation

struct DataServices{
    
    //SushiMenuView Data
    func sushiData() -> [SushiMenu_Logic]{
        
        if let url = Bundle.main.url(forResource: "SushiData", withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do{
                    let sushi = try decoder.decode([SushiMenu_Logic].self, from: data)
                    return sushi
                }
                catch{
                    print("Could not parse the JSON: \(error)")
                }
            }
            catch{
                print("404: \(error)")
            }
        }
        
        return [SushiMenu_Logic]()
    }
    
    //GalleryView Data
    func galleryData() -> [Gallery_Logic]{
        
        if let url = Bundle.main.url(forResource: "galleryData", withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do{
                    let pic = try decoder.decode([Gallery_Logic].self, from: data)
                    return pic
                }
                catch{
                    print("Could not parse the JSON: \(error)")
                }
            }
            catch{
                print("404: \(error)")
            }
        }
        
        return [Gallery_Logic]()
    }
}
