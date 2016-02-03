function [symbol] = map4(bits)
%taks 2 bits and maps to 4QAM symbol
% 
if isequal(bits,[0,0])
    symbol = [1,1];
elseif isequal(bits,[0,1])
    symbol = [1,-1];
elseif isequal(bits,[1,0])
    symbol = [-1,1];
elseif isequal(bits,[1,1])
    symbol = [-1,-1];
else
    error('Wrong input bits to map on 4QAM constellation');
end


