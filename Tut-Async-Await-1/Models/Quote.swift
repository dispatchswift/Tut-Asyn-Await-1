//
//  Quote.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import Foundation

struct Quote: Decodable {
	let anime: String
	let character: String
	let quote: String
}

extension Quote {
	static let mockQuote = Quote(anime: "Anime", character: "Character", quote: "Quote")
}
