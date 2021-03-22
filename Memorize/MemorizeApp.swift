//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ruben Garcia on 5/3/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewGame: game)
        }
    }
}
