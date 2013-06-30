


function J = costFunctionJ(X, y, theta, variation = 1)

%{
   X is a matrix containing training examples
   y is the target feature
   theta
   variation is used to chose between different, equivalent variations of
      the cost function algorithm. It is an argument with a default value so 
      costFunctionJ can be called as costFunctionJ(X, y, theta)
%}


switch (variation)
 case 1
   variation_1(X, y, theta);
 case 2
   variation_2(X, y, theta);
 otherwise
   variation_3(X, y, theta);
endswitch



%     ---------------     variation 1     ---------------
function J = variation_1(X, y, theta)
   m = length(y);      % number of training examples
   J = 0;
   h = theta * X;      % predictions of hypothesis on all m examples
   sqrErrors = (h - y) .^ 2;    % squared errors
   J = 1/(2*m) * sum(sqrErrors);
end



%     ---------------     variation 2     ---------------
function J = variation_2(X, y, theta)
   m = size(X, 1);
   J = 0;
   for i = 1:m
      h = h + ( (inv(theta) * X(i, 2)) - y(i) ) ^ 2
   endfor;
   J = h / (2 * m)
end



%     ---------------     variation 3     ---------------
function J = variation_3(X, y, theta)
   m = length(y);
   J = 0;
   J = sum( (X* theta - y) .^ 2);
   J = J / (2 * m)
end



%     ---------------     variation 4     ---------------
function J = variation_4(X, y, theta)
   m = length(y);
   J = 0;
   J = 1 / (2 * m)  * sum ( (theta(1) + theta (2) * X(:,2) - y) .^ 2 )
end



%     ---------------     variation 5     ---------------
function J = variation_4(X, y, theta)
   m = length(y);
   J = 0;
   h = 0
   for i = 1:m
      h = h + (theta' * X(i,:)' - y(i)) ^ 2;
   endfor;
   J = 1/(2 * m) * h
end














