clear;clc;
radiation
S=importdata('k(lamda).txt');
klamda=S.data(:,2);
j=1;
for x=0:0.01:10
    for i=1:size(S.data,1)
         shuju(i,1)=S.data(i,1);
         shuju(i,2)=exp(-x*S.data(i,2))*subs(I,lamda,S.data(i,1));
    end
    N2=trapz(shuju(:,1),shuju(:,2));
    for i=1:size(S.data,1)
         shuju(i,1)=S.data(i,1);
         shuju(i,2)=subs(I,lamda,S.data(i,1));
    end
    N1=trapz(shuju(:,1),shuju(:,2));
    C(j,1)=x;
    C(j,2)=1-N2/N1;
    j=j+1;
end
plot(C(:,1),C(:,2))