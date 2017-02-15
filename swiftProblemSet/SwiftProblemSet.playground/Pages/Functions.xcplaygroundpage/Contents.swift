/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
//: ## Functions 
//: ### Exercise 14
//: The function `emojiLove` should take two `String` parameters and use them to print a `String` with  the format "stringParameterOne ❤️ stringParameterTwo".
func emojiLove(whoLoves: String, whoEnjoys: String) {
    print("\(whoLoves) ❤️ \(whoEnjoys)")
}

//Example Function Call
 
 emojiLove(whoLoves: "cats", whoEnjoys: "dogs") // prints "cats ❤️ dogs"
 emojiLove(whoLoves: "udacity", whoEnjoys: "students") // prints "udacity ❤️ students"
 emojiLove(whoLoves: "peanut butter", whoEnjoys: "jelly") // prints "peanut butter ❤️ jelly"
 emojiLove(whoLoves: "ying", whoEnjoys: "yang") // prints "ying ❤️ yang"
 


//: ### Exercise 15
//: The function `median` should take three `Int` parameters and return the `Int` value in the middle.
func median(num1: Int, num2: Int, num3: Int) -> Int {
    //inserting the values into an array and ascending sorting them.
    var arr = [num1, num2, num3]
    arr.sort()

    return arr[1]
}

//Example Function Call
 
 median(num1: 1, num2: 5, num3: 6) // 5
 median(num1: 2, num2: 1, num3: 4) // 2
 median(num1: 3, num2: 6, num3: 6) // 6
 median(num1: -10, num2: 10, num3: 0) // 0
 median(num1: 0, num2: 0, num3: 0) // 0
 median(num1: 2, num2: 3, num3: 1) // 2
 median(num1: 2, num2: 2, num3: 1) // 2


/*:
 ### Exercise 16
 
 The function `beginsWithVowel` should take a single `String` parameter and return a `Bool` indicating whether the input string begins with a vowel. If the input string begins with a vowel return true, otherwise return false.
 
 First, you will want to test if the input string is "". If the input string is "", then return false. Otherwise, you can access the first character of a `String` by using `nameOfString.characters[nameOfString.startIndex]`.
 
 
 **Note**: It is assumed that the input string is given in English.
 */
func beginsWithVowel(_ inputString: String) -> Bool {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    if !inputString.isEmpty {
        if vowels.contains(inputString.lowercased().characters.first!){
            return true
        }
    }
    return false
}

//Example Function Call
 
 beginsWithVowel("Apples") // true
 beginsWithVowel("pIG") // false
 beginsWithVowel("oink") // true
 beginsWithVowel("udacity") // true
 beginsWithVowel("") // false
 


/*:
 ### Exercise 17
 
 The function `funWithWords` should take a single `String` parameter and return a new `String` that is uppercased if it begins with a vowel or is lowercased if it begins with a consonant.
 
 - To uppercase a `String`, use `nameOfString.uppercased()`.
 - To lowercase a `String`, use `nameOfString.lowercased()`.
 - It is assumed that the input string is given in English.
 
 **Hint**: Re-use the `beginsWithVowel` function.
 */
/**
func funWithWords(_ inputString: String) -> String {
    if beginsWithVowel(inputString){
        return inputString.uppercased()
    } else {
        return inputString.lowercased()
    }
}
**/

// using ternary conditional operator
func funWithWords(_ inputString: String) {
    beginsWithVowel(inputString) ? inputString.uppercased() : inputString.lowercased()
}

//Example Function Call
 
 funWithWords("Apples") // "APPLES"
 funWithWords("pIG") // "pig"
 funWithWords("oink") // "OINK"
 funWithWords("udacity") // "UDACITY"
 funWithWords("") // ""
 

/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 */
