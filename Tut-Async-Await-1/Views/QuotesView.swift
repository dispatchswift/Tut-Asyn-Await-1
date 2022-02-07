//
//  QuotesView.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import SwiftUI

struct QuotesView: View {
	var body: some View {
		List {
			ForEach(quotes) { quote in
				QuoteView(quote: quote)
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		QuotesView()
	}
}
