//
//  Home.swift
//  mvvm_tut
//
//  Created by  Иван Ощепков on 30.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct Home: View {
    @ObservedObject var data = FetchAccounts()

    var body: some View {
        ZStack {
            if data.accounts.isEmpty {
                Indicator()
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        ForEach(data.accounts) { account in
                            AccountCard(data: account)
                        }
                    }
                }
            }
        }.onAppear {
            self.data.fetch()
        }.navigationBarTitle("Home")
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
