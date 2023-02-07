//
//  ChildTimelineView.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/07.
//

import SwiftUI

struct ChildTimelineView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing :10, content: {
                Text("テスト1")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("詳細")
                    .font(.caption)
                    .lineLimit(3)
            })
            .background(Color.white)
            .opacity(10)
            .padding(.horizontal)
            
            Spacer(minLength: 10)
            
            Image("nikuzushi")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130,height: 130)
                .cornerRadius(10)
        }
        .background()
    }
}

struct ChildTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        ChildTimelineView()
    }
}
