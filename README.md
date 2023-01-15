# robotic_vision

This repo contains code for the Lane detection task. 

Objective: To take a video of a walk path/ a lane/ a road; to identify the leftmost and rightmost edges as the video plays and also calculate the median line that separates the edges.

Method: Hough transform can be applied on every frame of the video to detect the edges on either side of the line. The median will be the angle bisector of the two identified edges.

Environment: The code has been implemented in MATLAB using the Machine Vision Toolbox developed by Peter Corke. 
