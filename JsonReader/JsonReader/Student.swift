//
//  Student.swift
//  JsonReader
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//


import Foundation

struct Student : Codable {
    let id: Int?
    let name: String?
    let age: Int?
    let subjects: [String]?
    let address: Address?
    let scores: [String: Int?]?
    let hasScholarship: Bool?
    let graduationYear: Int?
}
