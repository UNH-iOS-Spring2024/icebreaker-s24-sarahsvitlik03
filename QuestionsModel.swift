//
//  QuestionsModel.swift
//  IceBreaker
//
//  Created by Sarah Svitlik on 2/8/24.
//

import Foundation

class Questions {
    var id: String
    var text: String
    
    init?(id: String, data: [String: Any] {
        guard let text = data["text"] as? String
        else {
            return nil
        }
        self.id = id
        self.text = text
    }    
}
