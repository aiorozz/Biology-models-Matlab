% Felicia Freeman
% Homework 2
% Problem 1
% LPA model

b=4.88;
cea=0.01;
mul=0.2;



%%%% Part i parameters,
%%% survival equilibrium is stable
mua=0.81;
cpa=0.005;

%%%% Part ii parameters
% % %%% survival equilibrium is unstable
% mua=0.96;
% cpa=0.5;


%%%%%% initial conditions %%%%%%

% Stable for (i), unstable for (ii)
l0 =10; 
p0 = 10;
a0 = 10;


% %%% Stable for (i), unstable for (ii)
% l0=179;
% p0=143;
% a0=105;



%%%% Stable for (i), unsstable for (ii)
% l0 = 13;
% p0 = 10;
% a0=3;



n=50; %time interval


l=zeros(n+1,1);
p=zeros(n+1,1);
a=zeros(n+1,1);

l(1)=l0;
p(1)= p0
a(1)=a0;

for i = 1:n
    l(i+1)=b*a(i)*exp(-cea*a(i));
    p(i+1)=(1-mul)*l(i);
    a(i+1)=p(i)*exp(-cpa*a(i))+(1-mua)*a(i);
end



%%%%%%%% Plot Solutions %%%%%%%%%%%%%%%
%Plot Larva in blue
plot(l,'-bo');
hold on

%Plot Pupa in red
plot(p,'-r*');
hold on

%Plot adults in black
plot(a,'-kx');

% Labels and legend
xlabel('n');
legend('Larva','Pupa','Adults');
