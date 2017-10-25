import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    var offset : Int
    
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
        
        // Draw red ellipse
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
        
        // Draw blue ellipse
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: -x + 500, width: 50, height: 50)
        
        // Draw yellow ellipse
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: -x + 500, centreY: -x + 500, width: 50, height: 50)
        
        // Draw green ellipse
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: -x + 500, centreY: x, width: 50, height: 50)
        
    }
    
}
