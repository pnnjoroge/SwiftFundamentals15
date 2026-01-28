/*:
## Exercise - Constants

 Declare a constant called `friends` to represent the number of friends you have on social media. Give it a value between 50 and 1000. Print out the value by referencing your constant.
 */
let friends = 600
print(friends)

//:  Now assume you go through and remove friends that aren't active on social media. Attempt to update your `friends` constant to a lower number than it currently is. Observe what happens and then move to the next step.
let friendsCount = 450
print(friendsCount)

//:  Does the above code compile? Why not? Print your explanation to the console using the `print` function. Go back and delete your line of code that updates the `friends` constant to a lower number so that the playground will compile properly.
print("No, it does not compile because it says friends constant is invalid due to being ambiguous and redeclared")
print("I declared the new count of friends to a new variable called NewFriendsCount for it to compile correctly. ")

/*:
page 1 of 10  |  [Next: App Exercise - Step Goal](@next)
 */
