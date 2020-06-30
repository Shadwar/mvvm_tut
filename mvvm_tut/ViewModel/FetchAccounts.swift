//
//  FetchAccounts.swift
//  mvvm_tut
//
//  Created by  Иван Ощепков on 30.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import Foundation
import SwiftUI

class FetchAccounts: ObservableObject {
    @Published var accounts: [Account] = []
    let url = "https://api.github.com/users/hadley/orgs"
    
    func fetch() {
        let urlSession = URLSession(configuration: .default)
        
        urlSession.dataTask(with: URL(string: url)!) { (data, _, _) in
            guard let data = data else { return }
            
            print(String(decoding: data, as: UTF8.self))
            
            do {
                let decoded = try JSONDecoder().decode([Account].self, from: data)
                
                DispatchQueue.main.async {
                    self.accounts = decoded
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
}
