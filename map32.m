function [symbol] = map32(bits)
%taks 5 bits and maps to 32QAM symbol
% 
if isequal(bits,[0,0,0,0,0])
    symbol = [1,1];
elseif isequal(bits,[0,0,0,0,1])
    symbol = [1,3];
elseif isequal(bits,[0,0,0,1,0])
    symbol = [3,5];
elseif isequal(bits,[0,0,0,1,1])
    symbol = [3,3];
elseif isequal(bits,[0,0,1,0,0])
    symbol = [5,1];
elseif isequal(bits,[0,0,1,0,1])
    symbol = [5,3];
elseif isequal(bits,[0,0,1,1,0])
    symbol = [3,1];
elseif isequal(bits,[0,0,1,1,1])
    symbol = [1,5];
elseif isequal(bits,[0,1,0,0,0])
    symbol = [1,-1];
elseif isequal(bits,[0,1,0,0,1])
    symbol = [1,-3];
elseif isequal(bits,[0,1,0,1,0])
    symbol = [3,-1];
elseif isequal(bits,[0,1,0,1,1])
    symbol = [3,-3];
elseif isequal(bits,[0,1,1,0,0])
    symbol = [5,-1];
elseif isequal(bits,[0,1,1,0,1])
    symbol = [5,-3];
elseif isequal(bits,[0,1,1,1,0])
    symbol = [3,-5];
elseif isequal(bits,[0,1,1,1,1])
    symbol = [1,-5];
elseif isequal(bits,[1,0,0,0,0])
    symbol = [-1,1];
elseif isequal(bits,[1,0,0,0,1])
    symbol = [-1,3];
elseif isequal(bits,[1,0,0,1,0])
    symbol = [-3,1];
elseif isequal(bits,[1,0,0,1,1])
    symbol = [-3,3];
elseif isequal(bits,[1,0,1,0,0])
    symbol = [-5,1];
elseif isequal(bits,[1,0,1,0,1])
    symbol = [-5,3];
elseif isequal(bits,[1,0,1,1,0])
    symbol = [-3,5];
elseif isequal(bits,[1,0,1,1,1])
    symbol = [-1,5];
elseif isequal(bits,[1,1,0,0,0])
    symbol = [-1,-1];
elseif isequal(bits,[1,1,0,0,1])
    symbol = [-1,-3];
elseif isequal(bits,[1,1,0,1,0])
    symbol = [-3,-1];
elseif isequal(bits,[1,1,0,1,1])
    symbol = [-3,-3];
elseif isequal(bits,[1,1,1,0,0])
    symbol = [-5,-1];
elseif isequal(bits,[1,1,1,0,1])
    symbol = [-5,-3];
elseif isequal(bits,[1,1,1,1,0])
    symbol = [-3,-5];
elseif isequal(bits,[1,1,1,1,1])
    symbol = [-1,-5];

else
    error('Wrong input bits to map on 32QAM constellation');


end

