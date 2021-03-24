//
//  main.swift
//  BinarySearchAlgorithm
//
//  Created by James Wu on 2021-03-23.
//

import Foundation

// Create an empty array
var newDataSet: [Int] = []

//Populate the array
for _ in 1...15 {
    newDataSet.append(Int.random(in: 1...100))
}
// 1. Random element within the array
//let target = dataSet[Int.random(in: 0...dataSet.count - 1)]
// 2. The last element
//let target = dataSet[dataSet.count - 1]
// 3. The first element
//let target = dataSet[0]
// 4. A value guaranteed to be greater than the highest value
//let target = dataSet[dataSet.count - 1] + 5

bubbleSort(unsorted: &newDataSet, showPrompts: false)
print(newDataSet)

func binarySort(targetNum target:Int) {

    var startInd: Int = 0
    var endInd: Int = newDataSet.count-1
    var searchTimes = 1

    while newDataSet[(startInd+endInd)/2] != target && startInd != endInd{

        if newDataSet[(startInd+endInd)/2] < target {
            startInd = (startInd+endInd)/2 + 1
        }else if newDataSet[(startInd+endInd)/2] > target{
            endInd = (startInd+endInd)/2 - 1
        }
//        print("start \(startInd)")
//        print("end \(endInd)")
        // Print where we are and the contents of the array
            print("Start is: \t\t\(startInd)")
            print("Middle is: \t\t\((startInd+endInd)/2)")
            print("End is: \t\t\(endInd)")
            print("Target value: \t\(target)")
            print("------")
            print("Index:\t", terminator: "")
            for i in startInd...endInd {
                print("\(i)\t", terminator: "")
            }
            print("")
            print("Values: ", terminator: "")
            for i in startInd...endInd {
                print("\(newDataSet[i])\t", terminator: "")
            }
            print("")
            waitForInput()

        searchTimes += 1
//        print(searchTimes)
    }
    if startInd == endInd && newDataSet[(startInd+endInd)/2] != target{
        print("target not found")
    }else{
        print("target \(target) is found at position \((startInd+endInd)/2) found after \(searchTimes) times")
    }
    
}

print("enter your target")
let target = Int(readLine()!)!

binarySort(targetNum: target)




