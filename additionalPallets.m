% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 13th, 2021.

function [numPallets] = additionalPallets(roofHeight, pallets, palletHeight)
    %  additionalPallets computes the number of additional storage pallets
    %   that can fit in the storage area of the structure
    
    %  roofHeight: scalar representing the height of the roof
    
    %  pallets: a matrix representing the number of pallets in 
    %   each storage cell of the storage area
    
    %  palletHeight: scalar representing the height of a single pallet
    
    %  numPallets: number of additional pallets that can fit in 
    %   the storage area
    
pallets = pallets .* palletHeight;
numPallets = sum(sum(floor((roofHeight - pallets) / palletHeight)));

end
