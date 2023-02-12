//
//  ChildTimelineView.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/07.
//

import SwiftUI

struct ChildTimelineView: View {
    init() {
        //navigation titleを変えるため
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            navigationBarAppearance.backgroundColor = UIColor.white
            navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black, .font : UIFont.systemFont(ofSize: 20)]
            navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font : UIFont.systemFont(ofSize: 40, weight: .bold)]
            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
            UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        }
    
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
