//
//  LoginView.swift
//  LetsWalk
//
//  Created by Anton Serov on 04.03.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        LogoAnimationView(content: Group {
            VStack(spacing: 14) {
                IconTextField(label: "Email", value: $email, iconSystemName: "envelope", contentType: .emailAddress)
                
                IconTextField(label: "Password", value: $password, iconSystemName: "key.viewfinder", isSecure: true)
                
                Button {
                    
                } label: {
                    Text("Forgot a password?")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.vertical, 7)
                }
                
                PrimaryButton("Login") {
                    
                }
                
                Spacer()
                
                HStack {
                    Text("New to LetsWalk?")
                        .foregroundColor(Color("Muted"))
                    
                    Button("Register") {
                        
                    }
                }
                
                
            }
            .padding()
            
            Spacer()
        })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
