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
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting position
        x = 0
        y = 0
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Clear the canvas
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)
        //Move from left to right
        x += 1
        
        //Calculate y
        y = Int(150*sin(Double(x)*Double.pi/180.0)+300)
        
        // No borders
        canvas.drawShapesWithBorders = false
        
        // Move the origin to the middle of the canvasand
        canvas.translate(byX: x, byY: y)
        
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
        
    }
    
}
