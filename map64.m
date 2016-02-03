function [symbol] = map64(bits)
%taks 6 bits and maps to 64QAM symbol
% 
if isequal(bits,[0,0,0,0,0,0])
    symbol = [1,1];
elseif isequal(bits,[0,0,0,0,0,1])
    symbol = [1,3];
elseif isequal(bits,[0,0,0,0,1,0])
    symbol = [1,5];
elseif isequal(bits,[0,0,0,0,1,1])
    symbol = [1,7];
elseif isequal(bits,[0,0,0,1,0,0])
    symbol = [3,1];
elseif isequal(bits,[0,0,0,1,0,1])
    symbol = [3,3];
elseif isequal(bits,[0,0,0,1,1,0])
    symbol = [3,5];
elseif isequal(bits,[0,0,0,1,1,1])
    symbol = [3,7];
elseif isequal(bits,[0,0,1,0,0,0])
    symbol = [5,1];
elseif isequal(bits,[0,0,1,0,0,1])
    symbol = [5,3];
elseif isequal(bits,[0,0,1,0,1,0])
    symbol = [5,5];
elseif isequal(bits,[0,0,1,0,1,1])
    symbol = [5,7];
elseif isequal(bits,[0,0,1,1,0,0])
    symbol = [7,1];
elseif isequal(bits,[0,0,1,1,0,1])
    symbol = [7,3];
elseif isequal(bits,[0,0,1,1,1,0])
    symbol = [7,5];
elseif isequal(bits,[0,0,1,1,1,1])
    symbol = [7,7];

elseif isequal(bits,[0,1,0,0,0,0])
    symbol = [1,-1];
elseif isequal(bits,[0,1,0,0,0,1])
    symbol = [1,-3];
elseif isequal(bits,[0,1,0,0,1,0])
    symbol = [1,-5];
elseif isequal(bits,[0,1,0,0,1,1])
    symbol = [1,-7];
elseif isequal(bits,[0,1,0,1,0,0])
    symbol = [3,-1];
elseif isequal(bits,[0,1,0,1,0,1])
    symbol = [3,-3];
elseif isequal(bits,[0,1,0,1,1,0])
    symbol = [3,-5];
elseif isequal(bits,[0,1,0,1,1,1])
    symbol = [3,-7];
elseif isequal(bits,[0,1,1,0,0,0])
    symbol = [5,-1];
elseif isequal(bits,[0,1,1,0,0,1])
    symbol = [5,-3];
elseif isequal(bits,[0,1,1,0,1,0])
    symbol = [5,-5];
elseif isequal(bits,[0,1,1,0,1,1])
    symbol = [5,-7];
elseif isequal(bits,[0,1,1,1,0,0])
    symbol = [7,-1];
elseif isequal(bits,[0,1,1,1,0,1])
    symbol = [7,-3];
elseif isequal(bits,[0,1,1,1,1,0])
    symbol = [7,-5];
elseif isequal(bits,[0,1,1,1,1,1])
    symbol = [7,-7];
    
elseif isequal(bits,[1,1,0,0,0,0])
    symbol = [-1,-1];
elseif isequal(bits,[1,1,0,0,0,1])
    symbol = [-1,-3];
elseif isequal(bits,[1,1,0,0,1,0])
    symbol = [-1,-5];
elseif isequal(bits,[1,1,0,0,1,1])
    symbol = [-1,-7];
elseif isequal(bits,[1,1,0,1,0,0])
    symbol = [-3,-1];
elseif isequal(bits,[1,1,0,1,0,1])
    symbol = [-3,-3];
elseif isequal(bits,[1,1,0,1,1,0])
    symbol = [-3,-5];
elseif isequal(bits,[1,1,0,1,1,1])
    symbol = [-3,-7];
elseif isequal(bits,[1,1,1,0,0,0])
    symbol = [-5,-1];
elseif isequal(bits,[1,1,1,0,0,1])
    symbol = [-5,-3];
elseif isequal(bits,[1,1,1,0,1,0])
    symbol = [-5,-5];
elseif isequal(bits,[1,1,1,0,1,1])
    symbol = [-5,-7];
elseif isequal(bits,[1,1,1,1,0,0])
    symbol = [-7,-1];
elseif isequal(bits,[1,1,1,1,0,1])
    symbol = [-7,-3];
elseif isequal(bits,[1,1,1,1,1,0])
    symbol = [-7,-5];
elseif isequal(bits,[1,1,1,1,1,1])
    symbol = [-7,-7];
    
elseif isequal(bits,[1,0,0,0,0,0])
    symbol = [-1,1];
elseif isequal(bits,[1,0,0,0,0,1])
    symbol = [-1,3];
elseif isequal(bits,[1,0,0,0,1,0])
    symbol = [-1,5];
elseif isequal(bits,[1,0,0,0,1,1])
    symbol = [-1,7];
elseif isequal(bits,[1,0,0,1,0,0])
    symbol = [-3,1];
elseif isequal(bits,[1,0,0,1,0,1])
    symbol = [-3,3];
elseif isequal(bits,[1,0,0,1,1,0])
    symbol = [-3,5];
elseif isequal(bits,[1,0,0,1,1,1])
    symbol = [-3,7];
elseif isequal(bits,[1,0,1,0,0,0])
    symbol = [-5,1];
elseif isequal(bits,[1,0,1,0,0,1])
    symbol = [-5,3];
elseif isequal(bits,[1,0,1,0,1,0])
    symbol = [-5,5];
elseif isequal(bits,[1,0,1,0,1,1])
    symbol = [-5,7];
elseif isequal(bits,[1,0,1,1,0,0])
    symbol = [-7,1];
elseif isequal(bits,[1,0,1,1,0,1])
    symbol = [-7,3];
elseif isequal(bits,[1,0,1,1,1,0])
    symbol = [-7,5];
elseif isequal(bits,[1,0,1,1,1,1])
    symbol = [-7,7];

else
    error('Wrong input bits to map on 64QAM constellation');
end

