function [A] = generate_PRBS_sequence(seed_string,N)
%GENERATE_PRBS_SEQUENCE Summary of this function goes here
%   Detailed explanation goes here
% z=prbs(init,g)
% 2^n-1-bit PRBS sequence based on initial string 'init'
% and polynomial represented by vector g (e.g., g=[7 1] => x^7+x+1).
% Rob Lynch Quinta Corporation 3/31/97 rob@quinta.com
z=init;
n=length(init);
for i=(n+1):(2^n-1)
  q=z(i-g(1));
  for j=2:length(g)
    q=xor(q,z(i-g(j)));
  end
  z=[z q];
end
end

