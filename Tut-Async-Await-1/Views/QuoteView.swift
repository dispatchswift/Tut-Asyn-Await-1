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
			
		}
	}
}

struct QuoteView_Previews: PreviewProvider {
	static var previews: some View {
		QuoteView(quote: Quote.mockData)
	}
}
