//
//  TimelineView.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/07.
//

import SwiftUI

struct TimelineView: View {
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
        NavigationView() {
            ZStack{
                Color.orange.edgesIgnoringSafeArea(.all)
                VStack{
                    NavigationLink(destination: Home()) {
                        ChildTimelineView()
                    }
                    
                    NavigationLink(destination: Home()) {
                        ChildTimelineView()
                    }
                    
                    NavigationLink(destination: Home()) {
                        ChildTimelineView()
                    }
                }
            }
            .navigationTitle("TimelineView")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
//        CardView(food: Food)
//        CardView(food: food)
    }
}
