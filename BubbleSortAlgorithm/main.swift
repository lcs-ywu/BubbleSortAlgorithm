//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by James Wu on 2021-03-19.
//

import Foundation

// Create an empty array
var dataSet: [Int] = []

//Populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}
//var dataSet = [1,2,3,4,5,6,7,8,9,10]

//Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInpiut()

// Sort the array
bubbleSort(unsorted: &dataSet)

// Print the array after "n" passes
print("Array after pass ")
print(dataSet)
waitForInpiut()

//var swapped = false

// Loop through the entire array "n" times
// (however many times there are elmnts in the array
// Create basic implementation


//for i in 0..<dataSet.count-1 {
//
//    swapped = false
//
//    // One pass through the array to float the highest number to the end
//    for j in 0..<dataSet.count-1-i {
//
//
////        // What comprison is this?
////        print("Pass \(i+1), comparison \(j+1)...")
//
//        // Campare left value to right value
//        if dataSet[j] > dataSet[j+1] {
//
//            // Swap values when left value is greater than the right value
//            let temporaryValue = dataSet[j]  //Set aside the left value
//            dataSet[j] = dataSet[j+1]        //Replace left with right
//            dataSet[j+1] = temporaryValue    //Replace right with temporary value
//
//            swapped = true
//
//        }
//
//    }
//
//    if swapped == false {
//        //Print the sorted array
//        print("Sorted:")
//        print(dataSet)
//        waitForInpiut()
//        break
//    }
//
//    print("Array after pass \(i+1)")
//    print(dataSet)
//    waitForInpiut()
//
//}




