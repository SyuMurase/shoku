//
//  signView.swift
//  TinderApp
//
//  Created by 村瀬嵩 on 2023/01/04.
//

import SwiftUI

struct signView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
    //            Color.blue.ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [Color.blue,Color.clear]), startPoint: .center, endPoint: .bottom)
                    .ignoresSafeArea()
    //            LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
                VStack {
                    Text("SignView")
                        .font(.system(size:50,weight: .heavy))
                        .foregroundColor(.white)
                    
                    TextField("名前",text: self.$name)
                        .padding(.leading, 5)//ここにpaddingを付けることで文字の最初に余白ができる
                        .frame(height: 50)
                        .textFieldStyle(PlainTextFieldStyle())
                        .background(Color.white)
                        .cornerRadius(10)
    //                    .overlay(RoundedRectangle(cornerSize: 5).stroke(Color(.init(white: 0.85,alpha:1))))
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
                        Text("登録")
                            .foregroundColor(.white)
                    })
                    .frame(width: 200, height: 50)
                    .background(Color(#colorLiteral(red: 0.8901960784, green: 0.1960784314, blue: 0.3098039216, alpha: 1)))
                    .cornerRadius(10)
//                    .frame(width: 200,height:50)
//                    .cornerRadius(10)
//                    .background(Color.blue)
                    .padding(.top,30)
                    
                    NavigationLink(destination: LoginView(),label: {
                        Text("すでにアカウントをお持ちの方")
                            .font(.system(size: 15))
                    })
                }
                .padding(.horizontal,50)
            }
            .navigationBarHidden(true)
        }
    }
}

extension View {
    
}

struct signView_Previews: PreviewProvider {
    static var previews: some View {
        signView()
    }
}
