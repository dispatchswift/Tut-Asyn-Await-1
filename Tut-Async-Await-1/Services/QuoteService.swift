//
//  QuoteService.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import Foundation

protocol QuoteServiceProtocol {
	func fetch() async throws -> [Quote]
}

final class QuoteService: QuoteServiceProtocol {
	
	func fetch() async throws -> [Quote] {
		let session = URLSession.shared
		let url = URL(string: APIConstants.baseURL.appending("/api/quotes"))!
		let (data, _) = try await session.data(from: url)
		return try JSONDecoder().decode([Quote].self, from: data)
	}
}
