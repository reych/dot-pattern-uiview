Texture Demo: Dot and Pattern
===============================================
UIView subclasses to draw dotted line and diagonal background.

Requirements (Tested)
-----------------------------------------------
* Swift 3
* XCode 8.3.3

Usage
-----------------------------------------------
1. Open the XCode project.
2. Launch simulator to see demo.

Classes
-----------------------------------------------
1. *PatternView: UIView*
  * Usage: In Storyboard, set the class of the UIView to be PatternView.
  * Functions:

   **animateUp(y: CGFloat)**  
   Animates the height and frame origin.y so that the view appears to extend upwards a distance of *y*.
   ```
   patternView.animateUp(y: 100) 
   ```

   **resetAnimation**  
   Resets the height and frame origin.y to the values upon initialization.
   ```
   patternView.resetAnimation() 
   ```

2. *DotView: UIView*
  * Usage: In Storyboard, set the class of the UIView to be DotView.
  * Functions:

  **animateUp(y: CGFloat)**  
  Animates the height and frame origin.y so that the view appears to extend upwards a distance of *y*.
  ```
  dotView.animateUp(y: 100) 
  ```

  **resetAnimation**  
  Resets the height and frame origin.y to the values upon initialization.
  ```
  dotView.resetAnimation()
  ```
  **redraw(color: UIColor, width: CGFloat)**  
  Redraws the dots given a color and width (or line thickness). Default is color = UIColor.black and width = 4.
  ```
  // Draw a red dotted line.
  dotView.redraw(color: UIColor.red, width: 4)
  ```

Image Assets
-----------------------------------------------
* diagonal.png: in use, includes sizes @2x and @3x.
* rectangle.png: the sample.

