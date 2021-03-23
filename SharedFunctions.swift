//
//  SharedFunctions.swift
//  BubbleSortAlgorithm
//
//  Created by James Wu on 2021-03-23.
//

import Foundation

// Pause to allow the user to see output
func waitForInpiut() {
    print("Press Return to continue")
    _ = readLine()
}

// To allow the array to passed by reference (rather than a copy) we will mark the parameter as "inout" which means we can change the original from outside the function
func bubbleSort(unsorted dataSet: inout [Int], showPrompts: Bool = true) {
    
    var swapped = false
    
    for i in 0..<dataSet.count-1 {
        
        swapped = false
        
        // One pass through the array to float the highest number to the end
        for j in 0..<dataSet.count-1-i {
            
            
    //        // What comprison is this?
    //        print("Pass \(i+1), comparison \(j+1)...")
            
            // Campare left value to right value
            if dataSet[j] > dataSet[j+1] {
                
                // Swap values when left value is greater than the right value
                let temporaryValue = dataSet[j]  //Set aside the left value
                dataSet[j] = dataSet[j+1]        //Replace left with right
                dataSet[j+1] = temporaryValue    //Replace right with temporary value
                
                swapped = true
                
            }
            
        }
        
        if swapped == false {
            //Print the sorted array
            if showPrompts {
                print("Sorted:")
                print(dataSet)
                waitForInpiut()

            }
            break
        }
        
        if showPrompts {
            print("Array after pass \(i+1)")
            print(dataSet)
            waitForInpiut()
        }
        
    }

}
