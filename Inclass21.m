%In class 21

% 1. Consider the system we discussed in class for a gene which is produced
% and degraded: dx/dt = k - d*x. Now consider that this gene turns on a
% second gene y, which also degrades so that its equation is 
% dy/dt = k2*x - d2*y. Choose some values for k,d,k2, and d2 and run a
% numerical simulation of this system for the case where both genes start
% out off ( x(0) = 0 and y(0) = 0). Plot the value of x and y in time and 
% explain your results. 

rhs1=@(x) 3-2.*x;
dt=0.01;
interval=[0 20];
nstep=(interval(2)-interval(1))/dt;
sol1(1)=0;
for ii=2:nstep
    sol1(ii)=sol1(ii-1)+rhs1(sol1(ii-1))*dt;
end
tt=linspace(interval(1),interval(2),nstep);

rhs2=@(x,y) 2.*x-5.*y;
dt=0.01;
interval=[0 20];
nstep=(interval(2)-interval(1))/dt;
sol2(1)=0;
for ii=2:nstep
    sol2(ii)=sol2(ii-1)+rhs2(sol1(ii-1),sol2(ii-1)*dt);
end
tt=linspace(interval(1),interval(2),nstep);

plot(tt,sol1,'r.-'); 
hold on; 
plot(tt,sol2, 'g.-');

%%
% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 

rhs1=@(y) y;
dt=0.01;
interval=[0 20];
nstep=(interval(2)-interval(1))/dt;
sol1(1)=.5;
for ii=2:nstep
    sol1(ii)=sol1(ii-1)+rhs1(sol1(ii-1))*dt;
end
tt=linspace(interval(1),interval(2),nstep);

rhs2=@(x,y)(1-x^2)*y - x;
dt=0.01;
interval=[0 20];
nstep=(interval(2)-interval(1))/dt;
sol2(1)=0.5;
for ii=2:nstep
    sol2(ii)=sol2(ii-1)+rhs2(sol1(ii-1),sol2(ii-1)*dt);
end

plot(tt,sol1,'r.-'); 
hold on; 
plot(tt,sol2, 'g.-');