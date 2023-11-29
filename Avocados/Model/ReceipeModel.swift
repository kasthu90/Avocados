//
//  ReceipeModel.swift
//  Avocados
//
//  Created by Kasthuri Tandavarayane on 29/11/2023.
//

import SwiftUI

struct Recipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var rating: Int
  var serves: Int
  var preparation: Int
  var cooking: Int
  var instructions: [String]
  var ingredients: [String]
}
