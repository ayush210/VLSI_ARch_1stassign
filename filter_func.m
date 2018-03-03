function [y_out] = filter_func(data)

persistent b1 b2 b3 b4 b5 b6 b7 b8;
if (isempty(b1))
    b1 = 0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;
end

h = [-0.1 -0.08 0.2 0.4];

a1 = b1 + b8;
a2 = b2 + b7;
a3 = b3 + b6;
a4 = b4 + b5;

y_out = a1 * h(1) + a2 * h(2) + a3*h(3)+ a4 * h(4); 

b8 = b7;
b7 = b6;
b6 = b5;
b5 = b4;
b4 = b3;
b3 = b2;
b2 = b1;
b1 = data;

end