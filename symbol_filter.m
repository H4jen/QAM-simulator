function [ filter ] = symbol_filter(filter_type,rolloff,N_symb,oversample)
%Returns_impuls_response RRC filter or RC filter.

if strcmp(filter_type,'RC')
    filter=rcosdesign(rolloff,N_symb,oversample+1,'normal');
elseif strcmp(filter_type,'RRC')
    filter=rcosdesign(rolloff,N_symb,oversample+1,'sqrt');
else
    error('try RC or RRC as input');
end
end

