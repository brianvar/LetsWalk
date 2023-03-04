//
//  AuthTextField.swift
//  LetsWalk
//
//  Created by Anton Serov on 04.03.2023.
//

import SwiftUI

struct AuthTextField: View {
    public let label: String
    public var value: Binding<String>
    public let iconSystemName: String
    public var isSecure = false
    public var contentType: UITextContentType = .username
    
    var body: some View {
        HStack {
            Image(systemName: iconSystemName)
                .foregroundColor(.gray.opacity(0.5))
                .frame(width: 18, height: 18)
            
            if isSecure {
                SecureField(label, text: value)
                    .textInputAutocapitalization(.never)
                    .textContentType(.password)
            } else {
                TextField(label, text: value)
                    .textInputAutocapitalization(.never)
                    .textContentType(contentType)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.gray.opacity(0.08)))
    }
}

struct AuthTextField_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        AuthTextField(label: "Enter text here...", value: $text, iconSystemName: "globe")
    }
}
