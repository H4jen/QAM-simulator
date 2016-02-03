function [bits_per_symbol] = bits_per_symbol(QAM_size)
%BITS_PER_SYMBOL Summary of this function goes here
%   Detailed explanation goes here
     if (QAM_size == 4)
         bits_per_symbol = 2; 
     elseif (QAM_size == 16)
         bits_per_symbol = 4;
     elseif (QAM_size == 32)
         bits_per_symbol = 5;
     elseif (QAM_size == 64)
         bits_per_symbol = 6;
     elseif (QAM_size == 128)
         bits_per_symbol = 7;
     elseif (QAM_size == 256)
         bits_per_symbol = 8;
     elseif (QAM_size == 512)
         bits_per_symbol = 9;
     elseif (QAM_size == 1024)
         bits_per_symbol = 10;
     else
         error('State QAM size for example 4,16,32,64,128,256,512,1024');
     end
end

