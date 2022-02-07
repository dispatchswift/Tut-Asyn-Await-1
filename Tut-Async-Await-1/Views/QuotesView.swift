//
//  QuotesView.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import SwiftUI

struct QuotesView: View {
	@StateObject private var viewModel = QuotesViewModel(service: QuoteService())
	
	var body: some View {
		Group {
			if viewModel.quotes.isEmpty {
				VStack {
					LoadingView(title: "Loading Quotes...")
				}
			} else {
				List {
					ForEach(viewModel.quotes, id: \.anime) { quote in
						QuoteView(quote: quote)
					}
				}
			}
		}
		.task {
			await viewModel.getRandomQuotes()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		QuotesView()
	}
}
