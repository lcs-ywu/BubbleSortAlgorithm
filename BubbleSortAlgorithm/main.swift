//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by James Wu on 2021-03-19.
//

import Foundation

// Pause to allow the user to see output
func waitForInpiut() {
    print("Press Return to continue")
    _ = readLine()
}

// Create an empty array
var dataSet: [Int] = []

//Populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

//Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInpiut()

// Sort the array

// Loop through the entire array "n" times
// (however many times there are elmnts in the array
for i in 0..<dataSet.count-1 {
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count-1 {
        
        // Campare left value to right value
        if dataSet[j] > dataSet[j+1] {
            
            // Swap values when left value is greater than the right value
            let temporaryValue = dataSet[j]  //Set aside the left value
            dataSet[j] = dataSet[j+1]        //Replace left with right
            dataSet[j+1] = temporaryValue    //Replace right with temporary value
            
        }
        
    }
    print("Array after pass \(i+1)")
    print(dataSet)
    waitForInpiut()
}

// Print the array after "n" passes
print("Array after pass ")
print(dataSet)
waitForInpiut()

//Print the sorted array
print("Sorted:")
print(dataSet)
waitForInpiut()
