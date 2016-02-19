% QAM engine
% Starting point of engine
% 2016-02-03 /H4jen
%
% Convention when using I/Q signals. The second index is always the im
% part and the first index is the RE part. Example [8,9] => 8 = Real and 9 =
% imag.

%--------------------------------
% some constants to control engine
%--------------------------------
QAM_constellation = 16; %Sets QMA constellation
plot_mult_factor = 10;
plot_constellation_size = QAM_constellation*plot_mult_factor; %sets number of symbols when plotting constellation

%------------ Control lsb time tick ------------
Oversamples = 8; %N number of points between symbols (to approximate real time)
I_data=ones(1,plot_constellation_size*Oversamples);
Q_data=ones(1,plot_constellation_size*Oversamples);

%--------------------------------
%Define symbolfilter
%--------------------------------
roll_off = 0.5;
filter_type = 'RC';
N_symbols = 6; %defines the number of symbols for each filter.
symb_filt = symbol_filter(filter_type,roll_off,8,Oversamples)

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
%Loop runs with minimal time tick. One iteration is one time point (N*symbol)long. Controlled by Oversamples. 
FS = stoploop({'To stop engine press OK button'}) ;
time_tick = 0;

%inform engine user of various information.
IQ_buffersize = QAM_constellation * plot_mult_factor * Oversamples

while(~FS.Stop())
  if mod(time_tick,(Oversamples+1)) == 0
    %generate a new input bits. Bits are either 1 or 0.
    bits=round(rand(1,bits_per_symbol(QAM_constellation)));
 
    %Feed bit to QAM mapper and generate constellation.
    symb=QAM_mapper(bits);
    time_tick = 0;
  else
     %push in zeros to oversample data 
     symb = [0 0];
  end
  
  %Add new time tick of data to buffer. Flush oldest time data.
  %First index always contains newest data.
  Q_data = [ symb(1,1) Q_data(1:(end-1))];
  I_data = [ symb(1,2) I_data(1:(end-1))];
  
  %Upsample with symbol filter. (RC or RRC)
    
  
  
  
  %At end of everything step time one point forward. Should be placed last in while loop
  time_tick=time_tick+1;
end


