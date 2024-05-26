//
//  Subject.swift
//  Openbook
//
//  Created by yunjikim on 5/16/24.
//

import Foundation
import FirebaseFirestoreSwift

struct Subject: Decodable, Hashable {
    @DocumentID var id: String?
    let subject: String
}
