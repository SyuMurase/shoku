import SwiftUI

struct BottonModal: View {
    let company = "Apple Inc."
        
    var body: some View {
        NavigationView {
            NavigationLink(destination: AfterModal()) {
                VStack{
                    ZStack{
                        Image("")
                            .resizable()
                            .overlay(
                                Circle().stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                            .frame(width:100,height: 100)
                            .clipShape(Circle())
                    }
                    Text("title")
                }
            }
        }
    }
}

struct SecondView: View {
    let info:String

    var body: some View {
        VStack{
            Text("SecondView")
                .padding()
            Text(info)
                .font(.largeTitle)
                .padding()
        }
    }
}

struct BottonModal_Previews: PreviewProvider {
    static var previews: some View {
        BottonModal()
    }
}
