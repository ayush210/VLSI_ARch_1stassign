function [y_out] = filter_func_tb()
clear all;
close all;
tic;
%t := rtime()/1000
x_in = [1 2 3 4];
len = length(x_in);
y_out = zeros(1,len);
for ii=1:len
    [y_out(ii)] = filter_func(x_in(ii)); 
end
toc;
%%plot(1:len,y_out);
end
