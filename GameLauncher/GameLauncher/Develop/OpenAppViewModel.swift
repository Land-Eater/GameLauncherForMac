//
//  OpenAppViewModel.swift
//  GameLauncher
//
//  Created by 堀口陸 on 2026/05/21.
//

import SwiftUI
import Foundation
import AppKit
import Combine


class OpenAppViewModel: ObservableObject{
    @MainActor
    func openApp(url: URL) {
        print(url.path)
        print(FileManager.default.fileExists(atPath: url.path))
        NSWorkspace.shared.open(url)
    }
    
    func makeTempolaryURL() -> URL{
        let url = URL(fileURLWithPath: "/System/Applications/Calculator.app")
        return url
    }
}
