//
//  Test.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/07.
//

import SwiftUI

struct Test: View {
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1640089204796-29af92b3ac2a?ixlib=rb-1.2.1")) { phase in
                if let image = phase.image {
                    image
                } else if phase.error != nil {
                    Text("load error")
                } else {
                    ProgressView()
                }
            }
            .frame(width: 50, height: 50)
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
