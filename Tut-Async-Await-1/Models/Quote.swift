//
//  Quote.swift
//  Tut-Async-Await-1
//
//  Created by Cleopatra on 2/7/22.
//

import Foundation

struct Quote: Decodable {
	let name: String
}

extension Quote {
	static let mockQuote = Quote(name: "")
}
