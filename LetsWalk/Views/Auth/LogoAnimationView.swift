//
//  LogoAnimationView.swift
//  LetsWalk
//
//  Created by Anton Serov on 04.03.2023.
//

import SwiftUI
import RiveRuntime

struct LogoAnimationView<ContentView: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var animationName: String? = nil
    
    public var content: ContentView
    @State private var isMovedUp = false
    
    var body: some View {
        VStack {
            RiveViewModel(fileName: "LogoAnimation", animationName: animationName)
                .view()
                .frame(maxWidth: isMovedUp ? 180 : 256, maxHeight: isMovedUp ? 180 : 256)
                .offset(y: isMovedUp ? 0 : 250)
                .ignoresSafeArea(.keyboard)
            
            content
                .offset(y: isMovedUp ? 0 : 800)
        }
        .onAppear {
            animationName = colorScheme == .light ? "animationLight" : "animationDark"
        }
        .ignoresSafeArea(.keyboard)
        .task(delayMoveUp)
    }
}

struct LogoAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LogoAnimationView(content: Text("Any Content"))
    }
}

extension LogoAnimationView {
    @Sendable
    private func delayMoveUp() async {
        try? await Task.sleep(nanoseconds: 1_300_000_000)
        
        withAnimation(.spring(response: 1.0, dampingFraction: 1.0, blendDuration: 1.0)) {
            isMovedUp = true
        }
    }
}
