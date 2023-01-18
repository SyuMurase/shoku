import SwiftUI

//元Food
struct Story: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    var price: String
    var image: String
}

//元 foods{title,imege,}

var stories: [Story] = [
    Story (title: "Choclate Cake", description: "チョコレートケーキ（英語: Chocolate cake）は、チョコレートまたはココアパウダーを主要材料に含むケーキである。ケーキの生地にココアパウダーを混ぜて焼くのが基本で、さらにチョコレートクリームを塗ったもの", price: "200", image:"choclates"),
    Story (title: "Cookies", description: "A biscuit is a flour-based baked food product. Outside North America the biscuit is typically hard, flat, and unleavened", price: "300", image:"cookies"),
    Story(title: "Sandwich", description: "Trim the bread from all sides and apply butter on one bread, then apply the green chutney all over.", price: "400",image: "sandwich1"),
    Story (title: "French Fries", description: "French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes.",price: "500", image: "fries"),
    Story (title: "寿司", description: "French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes.",price: "500", image: "nikuzushi"),
]

struct StoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false) {
            HStack(){
                ForEach(stories, id:\.id) { (story) in
                    VStack{
                        ZStack{
                            Image(story.image)
                                .resizable()
                                .overlay(
                                    Circle().stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                                .frame(width:100,height: 100)
                                .clipShape(Circle())
                        }
                        Text(story.title)
                    }
                }
            }
            .padding(.top, 5)
            .padding(.leading, 5)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
