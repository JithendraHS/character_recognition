clear ; close all; clc


input_layer_size  = 400;  % 20x20 pixel Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;          % 10 labels, from 1 to 10   
                          
% Load Training Data
fprintf('Loading and Visualizing Data ...\n')
load('ex3data1.mat');
s = size(X, 1);
% Randomly select 100 data points to display
sel = randperm(size(X, 1));
sel = sel(1:100);
displayData(X(sel, :));
fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf('\nLoading Saved Neural Network Parameters ...\n')
load('ex3weights.mat');
pred = predict(Theta1, Theta2, X);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
fprintf('Program paused. Press enter to continue.\n');
pause;
I =imread('five.JPG'); 
[m,n] = size(I);
grayimage=rgb2gray(I);
[a,b]=size(grayimage);
J = imresize(grayimage, [20 20]);
[x,y] = size(J);
I2 = im2double(J);
I3=reshape(I2,[1,400]);
%disp(I3);
imshow(I3);


displayData(I3(1,:));
    pred = predict(Theta1, Theta2,I3(1,:));
   fprintf('\nNeural Network Prediction: %d (digit %d)\n', pred, mod(pred, 10));