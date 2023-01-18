//
//  TabView.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/01/21.
//

import SwiftUI

struct Tabview: View {
    var body: some View {
        TabView {
            TabAView()
                .tabItem {
                    Image(systemName: "square.and.arrow.up")
                    Text("TabA")
                }
            TabBView()
                .tabItem {
                    Image(systemName: "pencil.circle")
                    Text("TabB")
                }
            TabCView()
                .tabItem {
                    Image(systemName: "pencil.circle")
                    Text("TabB")
                }
        }
    }
}
struct TabAView: View {
    var body: some View {
        Home()
    }
}
struct TabBView: View {
    var body: some View {
        Text("TabA")
    }
}
struct TabCView: View {
    var body: some View {
        signView()
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
