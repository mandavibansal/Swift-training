//
//  Untitled.swift
//  
//
//  Created by Krishna Sharma on 04/11/26.
//

import Foundation
print("==== ARRAY OPERATIONS ====")
var courses: [String] = [
    "Swift",
    "Java",
    "Python",
    "C++",
    "JavaScript"
]

print("Original Courses:",courses)

courses.append("Kotlin")
print("\nAfter adding courses:",courses)

courses.removeAll { $0 == "C++"}
print("After removing C++:",courses)

courses.sort()
print("Sorted courses:",courses)

let filteredCourses = courses.filter{
    $0.hasPrefix("J")
}
print("Courses starting with J:",filteredCourses)
let searchCourse = "Swift"
if courses.contains(searchCourse) {
    print("Course \(searchCourse) found!")
}else{
    print("Course \(searchCourse) not found!")
}
 
print("\n==== SET OPERATIONS ====")

let studentIDList = [
    101,102,103,101,104,102,105,103
]

let uniqueStudentIDs: Set<Int> = Set(studentIDList)

print("Original student IDs:",studentIDList)
print("Unique student IDs:",uniqueSTudentIDs.sorted())
print("Total unique students:",uniqueStudentIDs.count)

print("\n==== DICTIONARY OPERATIONS ====")

let studentMarks: [Int: Int] = [
    101: 85,
    102: 92,
    103: 76,
    104: 95,
    105: 68
]
print("Student Marks:",studentMarks)

if let topper=studentMarks.mex(by: {
    $0.value < $1.value
}) {
    print("Topper Student ID: \(topper.key)")
    print("Highest Marks: \(topper.value)")
}

let threshold = 75
let belowThreshold =studentMarks.filter{
    $0.value < threshold
}
print("\nStudents scoring below \(threshold):")

for(studentID,marks) in belowThreshold.sorted(by: {
    $0.key < $1.key
}) {
    print("Student ID: \(studentID), Marks: \(marks)")
}

print("\n===== ENUM OPERATIONS ======")
enum TaskPriority{
    case low
    case medium
    case high
    case urgent
}
let priority: TaskPriority = .high
switch priority{
case .low:
    print("Priority: Low - Can be completed later.")
    
case .medium:
    print("Priority: Medium - compleye when possible")
    
case .high:
    print("Priority: High - complete soon")

case .urgent:
    print("Priority: Urgent - complete immediately!")
}

print("\n=====ENUM WITH ASSOCIATED VALUES ======")

ENUM APIResult {
case success(data: String)
case fialure(error: String)
}

let successResponse = APIResult.success(
    data: "Student data fetched successfully"
)
let failureResponse = APIResult.failure(
    error: "Unable to connect to server"
)
func displayAPIResult(_ result: APIResult){
    switch result {
    case .success(let data):
        print("API Success: \(data)")
        
    case .failure(let error):
        print("API Error: \(error)")
    }
}
displayAPIResult(successResponse)
displayAPIResult(failureResponse)

print("\n=====COLLECTIONS SUMMARY =====")
print("Array: Stores ordered elements and allows duplicates")
print("Set: stores unique elements and automatically removes duplicates")
print("Dictonary: stores data in key-value pairs")
print("Enum: represents a fixed group of related values")
print("\n======PROGRAM EXECUTION DONE =====")
