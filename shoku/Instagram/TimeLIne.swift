import SwiftUI

struct Timeline {
    let id: Int
    let name: String
    let image: String
    let post: String
    let post_image: String
}

let timelines: [Timeline] = [
    Timeline(id: 0, name: "Arupaka", image: "bulldog", post: "This is post content", post_image: "ice_1"),
    Timeline(id: 1, name: "Buta", image: "bird", post: "This is post content", post_image: "ice_2"),
    Timeline(id: 2, name: "Hamster", image: "animal_hamster", post: "This is post content", post_image: "flower"),
    Timeline(id: 3, name: "Hiyoko", image: "animal_hiyoko", post: "This is post content", post_image: "moon"),
    Timeline(id: 4, name: "Inu", image: "animal_inu", post: "This is post content", post_image: "animal_inu")
]

struct TimeLIne: View {
    let timelines: [Timeline]

    var body: some View {
        VStack() {
            ForEach(self.timelines, id: \.id) { (timeline) in
                VStack(spacing: 0) {
                    HStack {
                        Image(timeline.image)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 4))
                            .frame(width: 50, height: 50, alignment: .leading)
                        Text(timeline.name)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "list.bullet")
                    }
                        .padding(.horizontal, 5)
                    Divider()
                    Image(timeline.post_image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width, alignment: .center)
                        .clipShape(Rectangle())
                    Divider()
                    Group {
                        Text("(timeline.name) ").fontWeight(.bold) +
                        Text(timeline.post)
                    }
                        .padding(.horizontal, 5)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                }
            }
        }
    }
}

struct TimeLIne_Previews: PreviewProvider {
    static var previews: some View {
        TimeLIne(timelines: timelines)
//        TimelineView(timelines: timelines)
    }
}
