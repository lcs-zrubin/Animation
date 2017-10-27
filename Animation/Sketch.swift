import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var movementx : Int
    var movementy : Int
    
    // This function runs once
    override init() {
        
        
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        
        movementx = 5
        movementy = 5
        x = movementx
        y = movementy
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Draw white square over canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        
        if x > 500 {
            movementx -= 1
        }
        if x < 0 {
           movementx += 1
        }
        
        if movementy > 500 {
            y -= 1
        }
        if movementy < 0 {
            y += 1
        }
        
       
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
