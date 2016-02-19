function [Q_out I_out] = convolve_symbol_filter_Q(filter,Q_in,I_in)
%This function convoles input samples with RRC or RC filter.  It delays the
%output with the size of the RRC/RC filter
persistent inputdata_buffer_I;
persistent inputdata_buffer_Q;

if isempty(inputdata_buffer_I)
   inputdata_buffer_I = zeros(1,size(filter,2))
end
if isempty(inputdata_buffer_Q)
   inputdata_buffer_Q = zeros(1,size(filter,2))
end

%Symmetrical filter does not care bout orientation. If not sym take CARE!!
inputdata_buffer_I = [ I_in inputdata_buffer_I(1:end-1)];
inputdata_buffer_Q = [Q_in inputdata_buffer_Q(1:end-1)];
Q_out = sum(inputdata_buffer_Q.*filter);
I_out = sum(inputdata_buffer_I.*filter);

end

