import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            ZStack {
//                Color.white
//                    .frame(width: 60, height: 60)
//                    .cornerRadius(100)
//                    .shadow(radius:10)
//
//                Button(action: {
//
//                }, label: {
//                    Image(systemName: "square.and.arrow.up")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 25,height: 25,alignment: .center)
//                })
//            }
//        }
//        .padding()
//    }
//}

//struct ContentView: View {
//    @StateObject var homeData = HomeViewModel()
//    var body: some View {
//        ScrollView{
//
//            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders] ,content: {
//                 Section(header:HeaderView()) {
//
//                    ForEach(tabsItems){tab in
//                        VStack(alignment: .leading, spacing: 15, content: {
//                            Text(tab.tab)
//                                .font(.title2)
//                                .fontWeight(.bold)
//                                .padding(.bottom)
//                                .padding(.leading)
//
//                            ForEach(tab.foods){food in
//                                CardView(food: food)
//                            }
//
//                            Divider()
//                                .padding(.top)
//                        })
//                    }
//                }
//            })
//        }
//        .overlay(
//            Color.white
//                .frame(height:UIApplication.shared.windows.first?.windowScene?.windows.first?.safeAreaInsets.top)
//                .ignoresSafeArea(.all,edges: .top)
//            ,alignment:  .top
//            )
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
