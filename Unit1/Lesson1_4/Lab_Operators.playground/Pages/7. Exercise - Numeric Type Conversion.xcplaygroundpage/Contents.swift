/*:
## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x = 10
let y = 3.2
let multipliedAsIntegers = x * Int(y)
print(multipliedAsIntegers)
print("It does not let me compile because it notifies me that x is an integer and y has a double type")

//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.

let multipliedAsDoubles = Double(x) * y
print(multipliedAsDoubles)


//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
print("Yes they are different because when the integer type is being used, it ignores decimals in the number value and only works with whole numbers, hence getting a value of 30 while the double type includes the decimal and creates the result of 32")

/*:
[Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
 */
