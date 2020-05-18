//
//  DetailView.swift
//  FlashNews
//
//  Created by Abhas Kumar on 5/17/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//
import SwiftUI
struct DetailView: View {
    
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

