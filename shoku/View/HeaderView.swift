import SwiftUI

struct HeaderView: View {
    @State private var sheetFlag = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("店名")
                .font(.title)
                .fontWeight(.bold)
            Text("Asia . Japanese . Watnow")
                .font(.caption)
            HStack(spacing: 10){
                Image(systemName: "clock").font(.caption)
                
                Button("場所！") {
                            self.sheetFlag.toggle()
                        }
                        .sheet(isPresented: $sheetFlag) {
                            SheetView()
//                            Image("position")
//                                .resizable()
//                                .frame(height: 200)
                        }

                Text("値段　500円")
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


struct SheetView: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
        Image("position")
            .resizable()
            .frame(height: 200)
      .navigationBarTitle("キッチンカーの場所",displayMode: .inline)
      .navigationBarItems(leading: Button("閉じる") {
          //閉じる機能
          self.presentationMode.wrappedValue.dismiss()
      })
    }
  }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
