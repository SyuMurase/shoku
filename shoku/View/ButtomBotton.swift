import SwiftUI

struct ButtomBotton: View {
    var body: some View {
        VStack {
            ZStack {
                Color.white
                    .frame(width: 50, height: 50)
                    .cornerRadius(100)
                    .shadow(radius:10)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "checkmark.seal.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height: 20,alignment: .center)
                })
            }
            ZStack {
                Color.white
                    .frame(width: 50, height: 50)
                    .cornerRadius(100)
                    .shadow(radius:10)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.left")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height: 20,alignment: .center)
                })
            }
            ZStack {
                Color.white
                    .frame(width: 50, height: 50)
                    .cornerRadius(100)
                    .shadow(radius:10)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height: 20,alignment: .center)
                })
            }
            ZStack {
                Color.white
                    .frame(width: 50, height: 50)
                    .cornerRadius(100)
                    .shadow(radius:10)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "square.and.arrow.up")
                    
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 20,height: 20,alignment: .center)
                })
            }
        }
    }
}

extension Image {
    func asTopControlButtonImage() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 20,height: 20,alignment: .center)
    }
}



