% QAM engine
% Starting point of engine
% 2016-02-03 /H4jen
%
% Convention when using I/Q signals. The second index is always the im
% part and the first index is the RE part. Example [8,9] => 8 = Real and 9 =
% imag.

%--------------------------------
%some constants to control engine
%--------------------------------
QAM_constellation = 4; %Sets QMA constellation
plot_constellation_size = QAM_constellation*10; %sets size of symbols when plotting constellation.
I_mapper=ones(1,plot_constellation_size);
Q_mapper=ones(1,plot_constellation_size);

%--------------------------------
%some functions that needs to be called before engine starts
%--------------------------------
rng('shuffle')
%init mapper function
QAM_mapper(zeros(1,bits_per_symbol(QAM_constellation)),QAM_constellation);

%-------------------------------
% Engine start point.
%-------------------------------
%Use box to stop look execution.
%stoploop();
FS = stoploop({'To stop engine press OK button'}) ;
while(~FS.Stop())
  %generate a new input bits. Bits are either 1 or 0.
  bits=round(rand(1,bits_per_symbol(QAM_constellation)));
  
  %Feed bit to QAM mapper and generate constellation.
  symb=QAM_mapper(bits);
  Q_mapper = [ Q_mapper(2:end) symb(1,1)];
  I_mapper = [ I_mapper(2:end) symb(1,2)];
  
end


