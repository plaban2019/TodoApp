//
//  ToDo.swift
//  Rest Api
//
//  Created by plaban dwivedy on 17/09/21.
//

import Foundation

struct ToDo: Codable {
    let userID: Int
    let id: Int
    let title: String
    let completed: Bool

    enum CodingKeys: String, CodingKey {
          case userID = "userId"
          case id, title, completed
      }
}
