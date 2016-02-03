function [symbol] = map16(bits)
%taks 4 bits and maps to 16QAM symbol
% 
if isequal(bits,[0,0,0,0])
    symbol = [1,1];
elseif isequal(bits,[0,0,0,1])
    symbol = [1,3];
elseif isequal(bits,[0,0,1,0])
    symbol = [3,1];
elseif isequal(bits,[0,0,1,1])
    symbol = [3,3];
    
elseif isequal(bits,[0,1,0,0])
    symbol = [1,-1];
elseif isequal(bits,[0,1,0,1])
    symbol = [1,-3];
elseif isequal(bits,[0,1,1,0])
    symbol = [3,-1];
elseif isequal(bits,[0,1,1,1])
    symbol = [3,-3];
    
elseif isequal(bits,[1,0,0,0])
    symbol = [-1,1];
elseif isequal(bits,[1,0,0,1])
    symbol = [-1,3];
elseif isequal(bits,[1,0,1,0])
    symbol = [-3,1];
elseif isequal(bits,[1,0,1,1])
    symbol = [-3,3];

elseif isequal(bits,[1,1,0,0])
    symbol = [-1,-1];
elseif isequal(bits,[1,1,0,1])
    symbol = [-1,-3];
elseif isequal(bits,[1,1,1,0])
    symbol = [-3,-1];
elseif isequal(bits,[1,1,1,1])
    symbol = [-3,-3];
    
else
    error('Wrong input bits to map on 16QAM constellation');


end

