import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("お寿司！")
                .font(.title)
                .fontWeight(.bold)
            Text("Asia . Japanese . Watnow")
                .font(.caption)
            HStack(spacing: 10){
                Image(systemName: "clock").font(.caption)
                Text("30-40 Min").font(.caption)
                Text("500円")
                    .font(.caption)
                    .padding(.leading,10)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
        }
        .padding(.horizontal)
        .frame(height: 100)
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
