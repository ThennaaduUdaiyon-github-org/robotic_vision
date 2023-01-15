im = iread('C:\Users\DELL\Downloads\Path_img.jpeg', 'double');
im = rgb2gray(im);

im_gauss = imgaussfilt(im,5);

im_enh = imadjust(im_gauss);
edges = icanny(im_enh);

montage({im,im_gauss,im_enh,edges});

h = Hough(edges, 'suppress', 2);
h.show();

lines = h.lines();

idisp(im, 'dark'); lines(1:2).plot('g');

t1 = lines(1).theta;
t2 = lines(2).theta;

slope1 = -tan(t1); slope2 = -tan(t2);
mnew = -cos(theta1) + cos(theta2)sin(theta1)+sin(theta2)

% Slope of the angle bisector
m_new = -(cos(t2)+cos(t1))/(sin(t1)+sin(t2));

y = mnew*x + (0-mnew*500)

xv = [400:700]; % xvalues
yv = m_new*xv + ( 0 - m_new*500 ); % yvalues

% Only include those indices where ‘y’ is >250 and <550
xv = xv(yv>250 & yv<550); 
yv = yv(yv>250 & yv<550);  

% Plotting the angle bisector
hold on; plot(xv,yv, 'r'); 

%Code for remaining frames ...
%The same process can be applied for every other frame in the video. The corresponding code is shown below:

inputVideo = VideoReader('C:\Users\DELL\Downloads\Path-video.avi');

% Output video file to which LANE-DETECTED FRAMES will be stored
outputVideo = VideoWriter('Lane_detected_video.avi');

while hasFrame(inputVideo)
	
	current_frame = readFrame(inputVideo);
      % THE PREVIOUS CODE FOR THE SINGLE FRAME NEEDS TO BE INSERTED HERE ...
	
	% Write frame to final video file
	writeVideo(myVideo, videoFrame);
	pause(1/inputVideo.FrameRate);
End

close(outputVideo)
