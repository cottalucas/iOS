/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 ****
 */
import Foundation
//: ## Challenge
//: **This exercise is completely optional and is not required for completing the Swift Problem Set.**
//: ### Challenge 1
//: Mystery code! What does this code do? Briefly, using comments, describe what is happening in each line. **Hint**: You may need to look up [Int initializers](http://stackoverflow.com/questions/30739460/toint-removed-in-swift-2).
/** This snipept basically sum all the integers inside of an array, after check if each element is a number in fact. **/

//declarating a constant array[strings]
let array = ["A", "13", "B", "5", "87", "t", "41"]
//the variable which will contain the final sum
var sum = 0

//passing throught each element of the array checking if it's a number. The convertion "string to int" from non real numbers trows nil (Unicode)
for string in array {
    if Int(string) != nil {
        
        // in case of being a real number, the value is converted and summed into the variable sum, which contains the total sum.
        let intToAdd = Int(string)!
        sum += intToAdd
    }
}
print(sum)


/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 */
