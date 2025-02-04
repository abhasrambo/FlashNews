//
//  WebView.swift
//  FlashNews
//
//  Created by Abhas Kumar on 5/17/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//


import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString: String?
       
       func makeUIView(context: Context) -> WKWebView {
           return WKWebView()
       }
       
       func updateUIView(_ uiView: WKWebView, context: Context) {
           if let safeString = urlString {
               if let url = URL(string: safeString) {
                   let request = URLRequest(url: url)
                   uiView.load(request)
               }
           }
       }
    
}
