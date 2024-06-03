% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 13th, 2021.

function [maxLoad] = actualLoad(W)
    %  actualLoad computes the largest load any of the support poles would
    %   need to bear based on the distribution of forces in the W matrix. 
    %   We assume each pole is solely responsible for the forces in its
    %   quadrant.
    
    %  W: Weights matrix (Distribution of weight on the roof)
    %  maxLoad: the largest load among any of the four support poles  
    %  W1: Specifying quadrant 1
    %  W2: Specifying quadrant 2
    %  W3: Specifying quadrant 3
    %  W4: Specifying quadrant 4
    
    %  vector_sum: using all of the sums of the value each quadrant to create a new
    %   vector

n = size(W);
W1 = W(1:(n(1)/2), 1:(n(2)/2));
W2 = W(((n(1)/2)+1):end, 1:(n(2)/2));
W3 = W(1:(n(1)/2), ((n(2)/2)+1):end);
W4 = W(((n(1)/2)+1):end, ((n(2)/2)+1):end);
sumW1 = sum(sum(W1));
sumW2 = sum(sum(W2));
sumW3 = sum(sum(W3));
sumW4 = sum(sum(W4));
vector_sum = [sumW1 sumW2 sumW3 sumW4];
maxLoad = max(vector_sum);
end

