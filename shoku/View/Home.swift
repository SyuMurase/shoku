import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        ScrollView{
            
            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders] ,content: {
                
                GeometryReader{render -> AnyView in
                    let offset = render.frame(in: .global).minY
                    
                    if -offset >= 0{
                        DispatchQueue.main.async {
                            self.homeData.offset = -offset
                        }
                    }
                    
                    return AnyView (
                        Image("nikuzushi")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width,height: 250 + (offset > 0 ? offset : 0))
                            .offset(y: (offset > 0 ? -offset : 0))
                    )
                }
                .frame(height: 250)
                
                //body
                Section(header:HeaderView()) {

                    ForEach(tabsItems){tab in
                        VStack(alignment: .leading, spacing: 15, content: {
                            Text(tab.tab)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom)
                                .padding(.leading)

                            ForEach(tab.foods){food in
                                CardView(food: food)
                            }

                            Divider()
//                                .padding(.top)
                        })
                    }
                }
                
            })
        }
        .overlay(
            Color.white
                .frame(height:UIApplication.shared.windows.first?.windowScene?.windows.first?.safeAreaInsets.top)
                .ignoresSafeArea(.all,edges: .top)
                .opacity(homeData.offset > 250 ? 1 : 0)
            ,alignment:  .top
            )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
