x = [1 1.5 2.5 3 3.5 4 5.5 6];
y = [3.12 2.75 2.14 1.89 1.67 1.47 1.01 0.89];

plot(x,y,"rx","MarkerSize",8)
xlabel("x")
ylabel("y")
hold on;

%Y = log(y);

sol = polyfit(x,y,2)

a = sol(1);
b = sol(2);
c = sol(3);

%reta = @(x) a*exp(b*x);

%reta = @(x) a*x + b;
reta = @(x) a*x.^2 + b*x + c;

erro = sqrt(sum((y - reta(x)) .^2)   )

plot(x,reta(x),"b","MarkerSize",8)






