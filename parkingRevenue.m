% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 13th, 2021.

function [revenue] = parkingRevenue(timeUsed, price)
    %   parkingRevenue computes the revenue from parking fees 
    %    timeUsed: a matrix with the number of hours each spot was used
    %    price: a matrix with the price per hour for each spot
    %     
    %   revenue: the total amount earned from all parking spots 

    %	L1: Left edge of timeUsed matrix
    %	R1: Right edge of timeUsed matrix
    %	T1: Top edge of timeUsed matrix (excluding first and last column as 
    %     those were counted in L1 and R1)
    %	B1: Bottom edge of timeUsed matrix (excluding first and last column as 
    %    those were counted in L1 and R1)

    %	L2: Left edge of price matrix
    %	R2: Left edge of price matrix
    %	T2: Left edge of price matrix (excluding first and last column as those
    %    were counted in L1 and R1)
    %	B2: Left edge of price matrix (excluding first and last column as those 
    %    were counted in L1 and R1)

L1 = timeUsed(:,1);
R1 = timeUsed(:,end);
T1 = timeUsed(1,2:(end-1));
B1 = timeUsed(end,2:(end-1));

L2 = price(:,1);
R2 = price(:,end);
T2 = price(1,2:(end-1));
B2 = price(end,2:(end-1));

revenue = sum(L1 .* L2) + sum(R1 .* R2) + sum(T1 .* T2) + sum(B1 .* B2);
end