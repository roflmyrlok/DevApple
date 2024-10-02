//
//  main.swift
//  JsonReader
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

let modelParser = ModelParser()

//set custom working dir to dir with students.json (proj root)
let filePath = "students.json"

guard let jsonData = try? Data(contentsOf: URL(fileURLWithPath: filePath)) else {
    print("filepath for \(filePath) is not set")
    exit(1)
}

guard let students = modelParser.parse(json: jsonData) else {
    exit(1)
}

modelParser.printStudents(students)
print("")
modelParser.printStudentWithHighestAge(students)
print("")
