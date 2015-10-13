X=linspace(-1,1,10);
Y=X.^3;
X0 = linspace(-1,1,100);
Y0=zeros(1,100);
for ii = 1:1:100
    Y0(ii) = Lagrange_poly(X,Y,X0(ii));
end
figure(1)
plot(X,Y,'r-o');
hold on
plot(X0,Y0,'b-')


X=linspace(-1,1,10);
Y=1./(1+25*X.^2);
X0 = linspace(-1,1,100);
Y0=zeros(1,100);
for ii = 1:1:100
    Y0(ii) = Lagrange_poly(X,Y,X0(ii));
end
figure(2)
plot(X,Y,'r-o');
hold on
plot(X0,Y0,'b-')

figure(3)
load('caseshiller_10yr.mat');
T=linspace(min(t),max(t),100);
for ii = 1:1:100
    Y(ii) = Lagrange_poly(t,y,T(ii));
end
plot(t,y,'r-o');
hold on
plot(T,Y,'b-')

