clear
%Simulating the Ornstein¨CUhlenbeck process 
%discretize dxt=k(theta?xt)dt+betadWt to get X(n+1)=X(n)+k(theta?Xn)¦¤t+beta¦¤Wn
k = 1;
theta = 1;
beta= 0.05;
dt = 0.01;
t = 0:dt:10;             % Time vector
x = zeros(1,length(t)); % Allocate output vector, set initial condition
rng(1);                 % Set random seed
for i = 1:length(t)-1
    x(i+1) = x(i)+k*(theta-x(i))*dt+beta*sqrt(dt)*randn;
end

%exact solution
x0 = 0; 
W = zeros(1,length(t)); % Allocate integrated W vector
for i = 1:length(t)-1
    W(i+1) = W(i)+sqrt(dt)*exp(k*t(i))*randn; 
end
ex = exp(-k*t);
xexact = x0*ex+theta*(1-ex)+beta*ex.*W;
plot(t,x ,'blue');
hold on;
plot(t,xexact,'green');
x(10)
xexact(10)