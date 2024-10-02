//
//  Adress.swift
//  JsonReader
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

struct Address: Codable {
    let street: String?
    let postalCode: String?
    let city: String?
}
