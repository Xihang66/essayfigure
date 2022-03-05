%function I=radiation(h,c0,Kb,Tsolar)
syms lamda;
h=6.62606896*10^-34;c0=3*10^8;Kb=1.3806488*10^-23;Tsolar=5800;
I=2*h*c0*c0/lamda^5/(exp(h*c0/lambda/Kb/Tsolar)-1);
