function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Find the value of K that is closest to every data point
% That means for every X, run a nested for loop and save only the value of
% K with the smallest distance
for i = 1:length(X)
   min = 99999999; % I initialized this as 0 at first... it was never overwritten.
   for j = 1:K
     dist = norm(X(i,:) - centroids(j,:))^2;
        if dist < min
            min = dist;
            idx(i) = j;
        end
   endfor
endfor


% =============================================================

end

