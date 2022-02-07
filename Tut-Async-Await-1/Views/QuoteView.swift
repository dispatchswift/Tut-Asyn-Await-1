//
//  QuoteView.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import SwiftUI

struct QuoteView: View {
	let quote: Quote
	
	var body: some View {
		VStack(alignment: .leading, spacing: 8) {
			HStack {
				Image(systemName: "tv")
					.font(.system(size: 12, weight: .black))
				Text(quote.anime)
			}
			
			Text(quote.character)
			Text(quote.quote)
		}
		.padding()
		.foregroundColor(.black)
	}
}

struct QuoteView_Previews: PreviewProvider {
	static var previews: some View {
		QuoteView(quote: Quote.mockQuote)
			.previewLayout(.sizeThatFits)
	}
}
