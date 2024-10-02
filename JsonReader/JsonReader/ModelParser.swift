//
//  ModelParser.swift
//  JsonReader
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

class ModelParser{
    func parse(json: Data) -> Students? {
        let decoder = JSONDecoder()
        do {
            return try decoder.decode(Students.self, from: json)
        } catch {
            print("Error decoding JSON: \(error)")
            return nil
        }
    }


    private func nillPrint<T>(_ value: T?) -> String {
        return value.map { "\($0)" } ?? "N/A"
    }

    func printStudents(_ students: Students?) {
        guard let students = students else {
            print("No students")
            return
        }
        
        for student in students.students {
            print("ID: \(nillPrint(student.id))")
            print("Name: \(nillPrint(student.name))")
            print("Age: \(nillPrint(student.age))")
            print("Subjects: \(nillPrint(student.subjects))")
            print("Address: \(nillPrint(student.address?.street)), \(nillPrint(student.address?.city)), \(nillPrint(student.address?.postalCode))")
            
            if let scores = student.scores {
                print("Scores:")
                for (subject, score) in scores {
                    print("\t\(subject): \(nillPrint(score))")
                }
            }

            print("Has Scholarship: \(student.hasScholarship == true ? "Yes" : "No")")
            print("Graduation Year: \(nillPrint(student.graduationYear))")
        }
    }
    
    func printStudentWithHighestAge(_ students: Students?) {
        guard let students = students else {
            print("No students")
            return
        }

        let validStudents = students.students.filter { $0.age != nil }
        if let oldestStudent = validStudents.max(by: { $0.age! < $1.age! }) {
            print("Student with the highest age is \(oldestStudent.name ?? "Unknown") (\(oldestStudent.age!))")
        }
    }
}


