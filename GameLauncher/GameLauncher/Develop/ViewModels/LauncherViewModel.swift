//
//  LauncherViewModel.swift
//  GameLauncher
//
//  Created by seika on 25.7.2026.
//

import Foundation
// リアクティブプログラミングするにはこの宣言が必要らしい。
import Combine

// @MainActor は、コイツの実行はメインスレッドでやるぜという宣言。
@MainActor
final class LauncherViewModel: ObservableObject {
    // @Published を使うとコイツの変化を読めるようになる。
    @Published private(set) var games: [GameEntry] = []
    @Published var selectedGameId: GameEntry.ID?
    
    private let loader = GameEntryLoader()
    
    func loadGames(from url: URL) {
        do {
            games = try loader.load(from: url)
            selectedGameId = games.first?.id
        } catch {
            games = []
            selectedGameId = nil
        }
    }
}
