//
//  AccountCard.swift
//  mvvm_tut
//
//  Created by  Иван Ощепков on 30.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct AccountCard: View {
    let data: Account

    var body: some View {
        HStack(spacing: 15) {
            AnimatedImage(url: URL(string: data.avatar_url))
            .resizable()
            .frame(width: 55, height: 55)
            .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 10) {
                Text(data.login)
                Text("\(data.id)").font(.caption)
            }
            
            Spacer(minLength: 0)
        }.padding(.horizontal)
            .padding(.top)
    }
}
