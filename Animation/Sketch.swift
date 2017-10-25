import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    var offset : Int
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        canvas.drawShapesWithBorders = false
        
        // Set starting position
        x = 250
        
        offset = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += offset
        
        // Draw purple ellipse
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        
        // Draw orange ellipse
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: -x + 500, centreY: 350, width: 50, height: 50)
        
        // Draw green ellipse
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
        // Draw blue ellipse
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: -x + 500, centreY: 150, width: 50, height: 50)
        
        // Draw black ellipse
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        
    }
    
}

