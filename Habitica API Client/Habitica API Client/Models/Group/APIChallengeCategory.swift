//
//  APIChallengeCategory.swift
//  Habitica API Client
//
//  Created by Phillip Thelen on 24.05.18.
//  Copyright © 2018 HabitRPG Inc. All rights reserved.
//

import Foundation
import Habitica_Models

class APIChallengeCategory: ChallengeCategoryProtocol, Decodable {
    var id: String?
    var slug: String?
    var name: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case slug
        case name
    }
    
    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try? values.decode(String.self, forKey: .id)
        name = try? values.decode(String.self, forKey: .name)
        slug = try? values.decode(String.self, forKey: .slug)
    }
}
