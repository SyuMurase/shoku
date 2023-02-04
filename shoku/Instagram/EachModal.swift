//
//  EachModal.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/01/31.
//

import SwiftUI

struct EachModal: View {
    var body: some View {
        NavigationView {
            HStack {
                ForEach(0..<4) { index in
                    NavigationLink(
                        destination: Text("1"),
                        label: {
                            Image("choclates")
                                .resizable()
                                .overlay(
                                    Circle().stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                                .frame(width:100,height: 100)
                                .clipShape(Circle())
                        })
                }
            }
        }
    }
}

struct EachModal_Previews: PreviewProvider {
    static var previews: some View {
        EachModal()
    }
}
