clear
k = 1;
theta = 1;
beta= 0.05;
dt = 0.01;
t = 0:dt:10;
x = zeros(1,length(t));
rng(1); 
for i = 1:length(t)-1
    x(i+1) = x(i)+k*(theta-x(i))*dt+beta*sqrt(dt)*randn;
end
E=x(9)*exp(-k*t)+theta*(1-exp(-k*t)) %E(x10)=x(9)*exp(-k*t)+theta*(1-exp(-k*t))
mean(E) %expected value