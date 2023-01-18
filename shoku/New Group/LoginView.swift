import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            
            // hex color E3324F / ED9762
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.clear]), startPoint: .center, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                Text("Login View")
                    .font(.system(size: 80, weight: .heavy))
                    .foregroundColor(.white)

                TextField("メールアドレス",text: self.$email)
                    .padding(.leading, 5)//ここにpaddingを付けることで文字の最初に余白ができる
                    .frame(height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(Color.white)
                    .cornerRadius(10)
                    
                TextField("パスワード",text: self.$password)
                    .padding(.leading, 5)//ここにpaddingを付けることで文字の最初に余白ができる
                    .frame(height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(Color.white)
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("ログイン")
                        .foregroundColor(.white)
                })
                .frame(width: 200, height: 50)
                // hex color E3324F
                .background(Color(#colorLiteral(red: 0.8901960784, green: 0.1960784314, blue: 0.3098039216, alpha: 1)))
                .cornerRadius(10)
                
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    Text("アカウントをお持ちでない方はコチラ")
                        .font(.system(size: 15))
                })
                
            }
            .padding(.horizontal, 50)
        }
        .navigationBarHidden(true)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
