//
//  NavigateVariable.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/13.
//

import SwiftUI

struct NavigateVariable: View {
    var body: some View {
        NavigationView() {
            ForEach(foods){ s in
                NavigationLink(destination: TargetView(itemName: s.title, itemB: s.description, itemC: s.image)) {
                    HStack {
                        VStack(alignment: .leading, spacing :10, content: {
                            Text(s.title)
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(s.description)
                                .font(.caption)
                                .lineLimit(3)
                        })
                        .background(Color.white)
                        .opacity(10)
                        .padding(.horizontal)
                        
                        Spacer(minLength: 10)
                        
                        Image(s.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 130,height: 130)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct TargetView: View {
    let itemName: String
    let itemB: String
    let itemC: String
    
    var body: some View{
        Text(itemName)
        Text(itemB)
        Image(itemC)
    }
}


struct NavigateVariable_Previews: PreviewProvider {
    static var previews: some View {
        NavigateVariable()
    }
}
