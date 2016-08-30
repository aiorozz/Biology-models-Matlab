% Felicia Freeman
% Homework 2
% Problem 4
% Leslie Gower Model for Gause data for P aurelia and P caundatum
% Plot solutions


% bi, birth rate
% ci, competition rate


%%%%%%%%% Extinction
% b1 = 1.5;
% b2 = 1.5;
% c1 = .5;
% c2 = .09;


%%competitive exclusion, y survives, x dies out
b1 = 50; 
b2 = 100;
c1 = 2;
c2 = .02;


%% coexistence with x at higher levels than y
% b1 =250;
% b2 = 150;
% c1=1.1;
% c2=.5;



% Initial conditions

x0 = 2;
y0 = 2;

% x0 =20; % Same dynamics for (2,2) and (20,20)
% y0=20;


n = 100; % Number of iterations

% Initialize x and y
x = zeros(n+1,1);
y = zeros(n+1,1);

x(1) = x0;
y(1) = y0;

for i = 1:n
    x(i+1) = b1*x(i)/(1+x(i)+c1*y(i));
    y(i+1) = b2*y(i)/(1+c2*x(i)+y(i));
end


%%%%% Plot Solutions %%%%%%%%%%%5
plot(x,'-b', 'Linewidth', 3);
hold on

plot(y,'-r', 'Linewidth',3);

xlabel('n');
legend('x', 'y');



