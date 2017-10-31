//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// No borders
canvas.drawShapesWithBorders = false

// Move the origin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)

//Make canvas background black
canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: -400, bottomLeftY: -300, width: 800, height: 600)
canvas.fillColor = Color.white


//Draw ghost head
canvas.drawEllipse(centreX: 0, centreY: 20, width: 200, height: 200)

//Draw ghost body
canvas.drawRectangle(centreX: 0, centreY: -30, width: 200, height: 100)

// draw ghost frills
canvas.drawEllipse(centreX: -75, centreY: -80, width: 50, height: 50)
canvas.drawEllipse(centreX: -25, centreY: -80, width: 55, height: 55)
canvas.drawEllipse(centreX: 25, centreY: -80, width: 55, height: 55)
canvas.drawEllipse(centreX: 75, centreY: -80, width: 50, height: 50)

//Draw ghost eyes
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: -25, centreY: 65, width: 15, height: 15)
canvas.drawEllipse(centreX: 50, centreY: 65, width: 15, height: 15)
canvas.drawEllipse(centreX: 20, centreY: 0, width: 25, height: 25)

//Draw text
canvas.textColor = Color.white
canvas.drawText(message: "O", size: 70, x: -200, y: 200)
canvas.drawText(message: "O", size: 70, x: -125, y: 200)
canvas.drawText(message: "O", size: 70, x: -50, y: 200)
canvas.drawText(message: "O", size: 70, x: 25, y: 200)
canvas.drawText(message: "O", size: 70, x: 100, y: 200)
canvas.drawText(message: "O", size: 70, x: 175, y: 200)
/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
