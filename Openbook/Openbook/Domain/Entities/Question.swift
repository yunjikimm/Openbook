//
//  Question.swift
//  Openbook
//
//  Created by yunjikim on 5/16/24.
//

import Foundation
import FirebaseFirestore

struct Question: Decodable, Hashable {
    @DocumentID var id: String?
    let question: String
    let answers: [String]
}
