//
//  HomeRitsu.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/12.
//

import SwiftUI

struct HomeRitsu: View {
    var body: some View {
        VStack{
//            Image("LaunchScreenImage")
            Image("nikuzushi")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300,height: 200)
                .border(Color.white)
                .clipped()
//                .padding(.all)
            
//            Spacer()
            HStack{
                VStack(alignment: .leading, spacing :10, content:{
                    Text("NINA SPACE")
                        .font(.caption)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("店舗の説明")
                        .font(.caption)
                   .font(.title2)
                        .fontWeight(.bold)
                })
//                Spacer()
                Text("営業中")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .padding(.horizontal)
            }
            .padding(.all)
        }
        .background(.white)
        .overlay(RoundedRectangle(cornerRadius: 30)
            .stroke(Color.gray, lineWidth: 2))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        
        .shadow(color: Color.gray.opacity(0.6), radius: 4, x: 8, y: 10)
//        .background(Color.gray)
        
//        .cornerRadius(10)
//        .padding(.horizontal)
    }
}

struct HomeRitsu_Previews: PreviewProvider {
    static var previews: some View {
        HomeRitsu()
    }
}
