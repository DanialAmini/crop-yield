clear;
close all;


N=30;

x1=rand(N,1);
x2=rand(N,1);



oo=ones(N,1);

y=0.2+max(x1,0.7)+abs(x2-0.4);

[x1,sort_]=sort(x1);

x2=x2(sort_);
y=y(sort_);

x=[oo,x1,x2];

%x=[oo,max(x1,0.65),abs(x2-0.35)];

b=x\y;


yhat1 = x*b;
scatter(x1,y)
hold on
plot(x1,yhat1)
xlabel('x')
ylabel('y,yhat')
title('oh oh')
grid on




figure();
title('lin regression')
scatter(y,yhat1);

a0=[0.1,0.2,0.3,0,0];
x=[x1,x2];
%eval_1(x,a)
fun = @(a0) obj_1(y,x,a0);
a = fminsearch(fun,a0);
yhat2=eval_1(x,a);

figure();
title('nonlin regression')
scatter(y,yhat2);

function f = eval_1(x,a)
    x1=x(:,1);
    x2=x(:,2);
    f = a(1)+a(2)*x1+a(3)*x2+a(4)*sqrt(x1)+a(5)*sqrt(x2);
end

function f = obj_1(y,x,a)
    temp = (eval_1(x,a)-y);
    f=dot(temp,temp);
end