import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        y = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Draw white square over canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        
        if x > 500 {
            x -= 1
        }
        if x < 500 {
           x += 1
        }
        
        if y > 500 {
            y -= 1
        }
        if y < 500 {
            y += 1
        }
        
       
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
