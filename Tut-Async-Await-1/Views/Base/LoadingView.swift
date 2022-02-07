//
//  LoadingView.swift
//  Tut-Async-Await-1
//
//  Created by DispatchSwift on 2/7/22.
//

import SwiftUI

struct LoadingView: View {
	let title: String
	
	var body: some View {
		ProgressView()
		Text(title)
	}
}

struct LoadingView_Previews: PreviewProvider {
	static var previews: some View {
		LoadingView(title: "Loading...")
	}
}
