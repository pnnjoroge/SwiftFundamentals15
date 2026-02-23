/*:
## Exercise - Define a Base Class

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game.

 Create a `Spaceship` class with three variable properties: `name`, `health`, and `position`. The default value of `name` should be an empty string and `health` should be 0. `position` will be represented by an `Int` where negative numbers place the ship further to the left and positive numbers place the ship further to the right. The default value of `position` should be 0.
 */
class Spaceship {
    var name: String = ""
    var health: Int = 0
    var position: Int = 0
    
    func moveLeft() {
        position -= 1
    }
    func moverRight() {
        position += 1
    }}


//:  Create a `let` constant called `falcon` and assign it to an instance of `Spaceship`. After initialization, set `name` to "Falcon."
 let falcon = Spaceship()
 falcon.name = "Falcon"

//:  Go back and add a method called `moveLeft()` to the definition of `Spaceship`. This method should adjust the position of the spaceship to the left by one. Add a similar method called `moveRight()` that moves the spaceship to the right. Once these methods exist, use them to move `falcon` to the left twice and to the right once. Print the new position of `falcon` after each change in position.
falcon.moveLeft()
print("\(falcon.name) moved left. The new position is \(falcon.position)")
falcon.moveLeft()
print("\(falcon.name) moved left. The new position is \(falcon.position)")
falcon.moverRight()
print("\(falcon.name) moved right. The new position is \(falcon.position)")

/*:
page 1 of 4  |  [Next: Exercise - Create a Subclass](@next)
 */
