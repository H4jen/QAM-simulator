function [symbol] = QAM_mapper(bits,varargin)
%QAM_MAPPER, takes the input bit and spits out the resulting symbol based
%on QAM_mapper the configuration parameters.
persistent QAM_pattern;
persistent bits_per_symbol;
if isempty(QAM_pattern)
   QAM_pattern = 4;
   bits_per_symbol = 2;
end

nVarargs = length(varargin);
if (nVarargs >= 1)
     if (varargin{1} == 16)
         QAM_pattern = 16;
         bits_per_symbol = 4;
     elseif (varargin{1} == 4)
         QAM_pattern = 4;
         bits_per_symbol = 2;
     elseif (varargin{1} == 32)
         QAM_pattern = 32;
         bits_per_symbol = 5;
     elseif (varargin{1} == 64)
         QAM_pattern = 64;
         bits_per_symbol = 6;
     elseif (varargin{1} == 128)
         QAM_pattern = 128;
         bits_per_symbol = 7;
     elseif (varargin{1} == 256)
         QAM_pattern = 256;
         bits_per_symbol = 8;
     elseif (varargin{1} == 512)
         QAM_pattern = 512;
         bits_per_symbol = 9;
     elseif (varargin{1} == 1024)
         QAM_pattern = 1024;
         bits_per_symbol = 10;
     end
end

if (size(bits,2) ~= bits_per_symbol)
    error(['input bits array must match size = ' num2str(bits_per_symbol)]);
end

if(QAM_pattern == 4)
    symbol = map4(bits);
elseif(QAM_pattern == 16)
    symbol = map16(bits);
elseif(QAM_pattern == 32)
    symbol = map32(bits);
elseif(QAM_pattern == 64)
    symbol = map64(bits);
elseif(QAM_pattern == 128)
    error('No mapper implemented yet.');
elseif(QAM_pattern == 256)
    error('No mapper implemented yet.');
elseif(QAM_pattern == 512)
    error('No mapper implemented yet.');
elseif(QAM_pattern == 1024)
    error('No mapper implemented yet.');
end

