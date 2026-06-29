//
//  OpenAppView.swift
//  GameLauncher
//
//  Created by 堀口陸 on 2026/05/18.
//

import SwiftUI
import Combine

struct OpenAppView: View {
    @StateObject private var viewModel: OpenAppViewModel = OpenAppViewModel()

    
    
    var body: some View {
        VStack {
            Button {
                // Example: replace with a real app URL
                let url = URL(fileURLWithPath: "/System/Applications/Calculator.app")
                viewModel.openApp(url: url)
                
            } label: {
                Text("Open App")
            }
        }
        .padding()
    }
}

#Preview {
    OpenAppView()
}
