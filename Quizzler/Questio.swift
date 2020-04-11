//
//  Questio.swift
//  Quizzler
//
//  Created by Miroslav Hnát on 10/04/2020.
//  Copyright © 2020 MiroslavHnat. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String

    init(q: String, a: String) {
        text = q
        answer = a
    }
}
