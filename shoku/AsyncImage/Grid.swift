//
//  GridItem.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/07.
//

import SwiftUI

struct Grid: View {
//    let grids = Array(repeating: GridItem(.fixed(100)), count:2)
//    let grids = Array(repeating: GridItem(.adaptive(minimum: 140, maximum: 140))
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 140))]) {
//            LazyVGrid(columns: grids) {
            
                ForEach((1...10), id: \.self) { num in
//                    Image("sandwich1")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
                    
                    Page(str: String(num))
                        .cornerRadius(8)
                        .frame(width: 130, height:150)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct Page: View {
    let colors:[Color] = [.green,.blue,.pink,.purple,.orange]
    let str:String
    
    //Photo
    let photos: [String] = ["sandwich","sandwich1"]
    
    var body: some View {
        ZStack {
            Image(photos.randomElement()!)
                .resizable()
                .aspectRatio(contentMode: .fit)
//            colors.randomElement()
            Text(str)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
