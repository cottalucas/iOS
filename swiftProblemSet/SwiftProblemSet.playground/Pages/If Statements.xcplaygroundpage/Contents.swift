/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
import Foundation
/*: 
## If Statements
### Exercise 10

1. Write a function called `rest()` that prints out the following message: "Stay in bed."
2. Declare a bool called `sick` with an initial value of true or false.
3. Write a statement such that when `sick` is true the function `rest()` is called.
*/
func rest(){
    print("Stays in bed.")
}

var sick = true

sick ? rest() : print("You are ready to work!")

/*:
### Exercise 12

Congratulations! You got a new job! Your job is to review games and ensure that they pass certain criteria before they are released. The criteria are the following:

- has less than 10 bugs
- has music
- has more than 5 levels

To complete this exercise:

- Write an if-statement to check if the current game can be released.
- Add your if statement to the function, `checkForRelease(bugs: Int, music: Bool, levels: Int)`.
- If a game meets all three criteria, call the function `release()` within your if statement.
- If a game does not meet one of the criteria, print out a message indicating what needs to be fixed.

To do this, you’ll have access to three variables: `bugs`, `hasMusic`,
and `numberOfLevels`.

Change the values of the variables and see how the output changes.
*/
var game = "Slow adventures with Morris the Lorris"

var bugs = 9
var hasMusic = true
var numberOfLevels = 6

func release() {
    print("\(game) is now ready for sale.")
}

func checkForRelease(bugs: Int, music: Bool, levels: Int) {
    bugs < 10 && music && levels > 5 ? release() : print("\(game) doesn't achieve basic criteria to be released. Please fix the issues and try again.")
}

checkForRelease(bugs: bugs, music: hasMusic, levels: numberOfLevels)

/*:
 ### Exercise 13
 
 In this exercise, imagine you are training for a duathlon. We are going to write a program to check if you are physically prepared.
 
 We’ve defined three variables:
 
 - `name` (name of trainee)
 - `canFinishBike` (indicates if you can finish the bike portion)
 - `canFinishRun` (indicates if you can finish the running portion)
 
 Your task is to write an **if, else-if statement** that checks if an athlete-in-training is ready for the duathlon:
 - If a trainee can finish both components, the program should print out a message indicating that the person is ready.
 - If a trainee is not ready, the program should print out each element (biking, running, or both) that they cannot finish.
 - Write your if statement in the function, func `checkTrainingStatus(name: canFinishBike: canFinishRun:)`.
 */
let name: String = "Teresa"
var canFinishBike: Bool = true
var canFinishRun: Bool = true

func checkTrainingStatus(name: String, bike: Bool, run: Bool) {
    //TODO: Add your if, else-if statement here!
    if canFinishRun && canFinishBike {
        print("\(name) is ready! She can perform both portions")
    } else {
        if !canFinishRun && !canFinishBike {
            print("\(name) is very not ready! She can't perform any portion.")
        } else if !canFinishBike {
            print("\(name) can't finish biking.")
        } else {
            print("\(name) can't finish running.")
        }
    }
}

checkTrainingStatus(name: name, bike: canFinishBike, run: canFinishRun)

//https://review.udacity.com/#!/rubrics/520/view
//the review document online specify a triathlon (swim, bike, and run) as criteria. However the exercise asks for two categories (run and bike).
//the logic is pretty much the same. I hope this fits the needs.
/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 */
