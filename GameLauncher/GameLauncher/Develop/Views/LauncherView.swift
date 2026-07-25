//
//  LauncherView.swift
//  GameLauncher
//
//  Created by seika on 25.7.2026.
//

import SwiftUI
import AppKit

struct LauncherView: View {
    // @StateObject は、コイツを監視するぜという宣言。
    @StateObject private var viewModel = LauncherViewModel()
    
    // View を実装しているので body プロパティを実装しなくてはならない。
    var body: some View {
        // Games.Select(game => new Text(game.Title)); みたいなイメージ。
        // List(viewModel.games, content: { ... }) であるが、
        // 最後の引数がクロージャの場合カッコの外に出せるというふざけた記法。｀
        List(viewModel.games) {game in
            Text(game.title)
        }
        // List に対するメソッド呼び出し。
        .task {
            // View が表示された時に行う非同期処理。
            // Xcode内のリソースを引っ張ってくる方法らしい。これでテストを回してみる。
            guard let url = Bundle.main.url(
                forResource: "Test",
                withExtension: "json"
            ) else {
                print("Test.jsonが見つからなかった。")
                return
            }
            
            viewModel.loadGames(from: url)
        }
    }
    
}
