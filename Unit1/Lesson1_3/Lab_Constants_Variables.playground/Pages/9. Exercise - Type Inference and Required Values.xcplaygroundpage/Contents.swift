/*:
## Exercise - Type Inference and Required Values
 
 Declare a variable called `name` of type `String`, but do not give it a value. Print `name` to the console. Does the code compile? Remove any code that will not compile.
 */


print("No it will not compile because variable name does not have a value assigned")

//:  Now assign a value to `name`, and print it to the console.
var name: String = "John Doe"
print(name)


//:  Declare a variable called `distanceTraveled` and set it to 0. Do not give it an explicit type.
var distanceTraveled: Double = 0

//:  Now assign a value of 54.3 to `distanceTraveled`. Does the code compile? Go back and set an explicit type on `distanceTraveled` so the code will compile.
distanceTraveled = 54.3
print(distanceTraveled)
print("No, it does not compile because it is notifying that it cannot assign a Double value to an Integer value")

/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Percent Completed](@next)
 */
