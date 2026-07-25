//
//  GameEntryLoader.swift
//  GameLauncher
//
//  Created by seika on 25.7.2026.
//

import Foundation

// ゲームのJSONを読み込んで、GameEntryの配列を返す構造体
struct GameEntryLoader {
    // Pathをもらってそこから読み取る。読み取れない場合は例外を返す。
    func load(from url: URL) throws -> [GameEntry] {
        // urlからデータを引っ張ってきて、JSONから変換して返す。
        let data = try Data(contentsOf: url)
        // .self というのは typeof() みたいなやつで、型情報そのものを返す。
        return try JSONDecoder().decode([GameEntry].self, from: data)
    }
}
