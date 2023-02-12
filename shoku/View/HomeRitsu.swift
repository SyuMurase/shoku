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
            Text("ああ")
        }
        .background(Color.blue)
        .frame(width: 130,height: 200)
        
    }
}

struct HomeRitsu_Previews: PreviewProvider {
    static var previews: some View {
        HomeRitsu()
    }
}
