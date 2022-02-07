//
//  QuotesViewModel.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import Foundation

@MainActor
final class QuotesViewModel: ObservableObject {
	@Published private(set) var quotes: [Quote] = []
	
	private let service: QuoteServiceProtocol
	
	init(service: QuoteServiceProtocol) {
		self.service = service
	}
	
	func getRandomQuotes() async {
		do {
			self.quotes = try await service.fetchRandomQuotes()
		} catch {
			print(error)
		}
	}
}
