function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

len = size(y);
k=1;
l=1;

for i=1:len
	if y(i) == 1
		positive(k,1) = X(i,1);
		positive(k,2) = X(i,2);
		k++;
	else
		negative(l,1) = X(i,1);
		negative(l,2) = X(i,2);
		l++;
	end
end

one = ones(size(positive),1);
zero = zeros(size(negative),1);
plot(positive,one,'k+', negative, zero , 'ko')


% =========================================================================



hold off;

end
