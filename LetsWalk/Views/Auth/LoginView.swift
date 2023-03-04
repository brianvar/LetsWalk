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
            VStack {
                AuthTextField(label: "Email", value: $email, iconSystemName: "envelope", contentType: .emailAddress)
                
                AuthTextField(label: "Password", value: $password, iconSystemName: "key.viewfinder", isSecure: true)
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
