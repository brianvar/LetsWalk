//
//  PrimaryButton.swift
//  LetsWalk
//
//  Created by Anton Serov on 05.03.2023.
//

import SwiftUI

struct PrimaryButton: View {
    private var text: String
    private var action: () -> ()
    
    init(_ text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }
    
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("Primary"))
                .cornerRadius(10)
        })
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton("Some button") {
            print("It works!")
        }
    }
}
