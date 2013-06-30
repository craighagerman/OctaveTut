% driver for linear regression example 
%------------------------------------------

fprintf('Loading data from 1variable.txt\n')

% ---------- load data -----------------------------------------
% nb. this is made-up data which is supposed to represent:
%   col_1:  city population 
%   col_2:  company profit
data = load('1variable.txt');


% let X be the input features and y be the output/target features,
% m is the number of training examples
% nb. trailing semi-colon suppresses output
X = data(:, 1);  % first colummn of data matrix
y = data(:, 2);  % second column of data matrix

% the following two lines are equivalent. We will only use m.
% n will not be used - only presented as an equivalency
m = length(y);
n = size(X,1)

% ---------- plot data ------------------------------------------
% comment / uncomment to show/hide plot of the data
% plotdata(X, y);


% add a column of ones to the front of X
% nb. ones(m, 1) makes a single column m-rows long filled with ones.
X = [ones(m, 1), X] % Add a column of ones to x

% initialize theta as a (2,1) matrix of zeros
theta = zeros(2, 1);

% set number of iterations and value for alpha
iterations = 1000;
alpha = 0.01;

costFunctionJ(X, y, theta)



fprintf('Goodbye\n')