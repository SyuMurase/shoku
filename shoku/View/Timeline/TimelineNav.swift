//
//  TimelineView.swift
//  shoku
//
//  Created by 村瀬嵩 on 2023/02/07.
//

import SwiftUI

struct TimelineNav: View {
    
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
                
                VStack(alignment: .leading, spacing: 15, content: {
                    Text("Moku Moku")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        .padding(.leading)
                    
                    
                    ForEach(foods){ s in
                        NavigationLink(destination: Home()) {
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
                            .background(Color.white)
                        }
                    }
                    
                })
                .navigationTitle("TimelineView")
                .navigationBarTitleDisplayMode(.inline)
                //                Color.orange.edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct TimelineNav_Previews: PreviewProvider {
    static var previews: some View {
        TimelineNav()
//        CardView(food: Food)
//        CardView(food: food)
    }
}

