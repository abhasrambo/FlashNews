//
//  NetworkManager.swift
//  FlashNews
//
//  Created by Abhas Kumar on 5/17/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import Foundation

class NetworkManager : ObservableObject {
    
    @Published var posts = [Post]()
    func fetchData() {
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=404e36ef926740d9ac68218371b00c4a"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                           let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.articles
                            }
                        }catch{
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
}

