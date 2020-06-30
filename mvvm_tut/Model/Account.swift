//
//  Account.swift
//  mvvm_tut
//
//  Created by  Иван Ощепков on 30.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import Foundation

struct Account: Identifiable, Decodable {
    var id: Int
    var login: String
    var avatar_url: String
}
