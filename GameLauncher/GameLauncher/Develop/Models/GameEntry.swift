//
//  GameEntry.swift
//  GameLauncher
//
//  Created by seika on 25.7.2026.
//

// using System; みたいなもん
import Foundation

// ゲームのJSONデータ
// ID, タイトル, 説明文, appのPath, 表紙のPath
// Codable は、JSONなどとの相互変換を可能にするプロトコル。
// Identifiable は、IDがあるというプロトコル。
struct GameEntry: Codable, Identifiable {
    let id: String
    let title: String
    let description: String
    let appPath: String
    let imagePath: String?
}
