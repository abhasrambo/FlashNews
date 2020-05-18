//
//  ContentView.swift
//  FlashNews
//
//  Created by Abhas Kumar on 5/17/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.title))
                        Text(post.description)
                    }
                }
                }
            .navigationBarTitle("Flash News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



