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

bubbleSort(unsorted: &newDataSet, showPrompts: false)
print(newDataSet)

func binarySort(targetNum target:Int) {
    
    var startInd: Int = 0
    var endInd: Int = newDataSet.count-1
    var searchTimes = 1
    
    while newDataSet[startInd+endInd/2] != target {
        
        if startInd > endInd {
            print("target not found")
            break
        }
        print(startInd)
               print(endInd)
        
        if newDataSet[startInd+endInd/2] < target {
            startInd = startInd+endInd/2
        }else if newDataSet[startInd+endInd/2] > target{
            endInd = startInd+endInd/2
        }
       
        searchTimes += 1
//        print(searchTimes)
    }
    print("target found after \(searchTimes) times")
}

print("enter your target")
let target = Int(readLine()!)!

binarySort(targetNum: target)
