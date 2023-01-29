import SwiftUI

struct InstaView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia",size:26)!]
    }
    var body: some View {
        TabView {
            NavigationView {
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack {
//                        StoryView(stories: stories)
                        StoryView()
                        Divider()
                        TimeLIne(timelines: timelines)
                    }
                }
                    .navigationBarTitle(Text("Instagram"),displayMode: .inline)//displaymodal
                    .navigationBarItems(
                        leading: IconView(systemName: "camera"),
                        trailing: HStack{
                            IconView(systemName: "tv")
                            IconView(systemName: "paperplane")
                                .padding(.leading, 10)
                        }
                            .padding(.bottom, 10)
                    )
            }
            .tabItem {
                IconView(systemName: "house")
            }
            IconView(systemName: "magnifyingglass")
                .tabItem {
                    IconView(systemName: "magnifyingglass")
                }
            IconView(systemName: "plus.app")
                .tabItem {
                    IconView(systemName: "plus.app")
                }
            IconView(systemName: "heart")
                .tabItem {
                    IconView(systemName: "heart")
                }
            IconView(systemName: "person")
                .tabItem {
                    IconView(systemName: "person")
                }
                .accentColor(.black)
        }
    }
}

struct IconView: View{
    var systemName: String
    var body: some View{
        Image(systemName: systemName)
            .font(.title)
    }
}
    

struct InstaView_Previews: PreviewProvider {
    static var previews: some View {
        InstaView()
    }
}
