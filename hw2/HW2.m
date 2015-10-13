solution = solver(10,@f,0,1);
hold on
solution = solver(100,@f,0,1);
hold on
solution = solver(1000,@f,0,1);
x = linspace(0,1,10000);
%y = sin(2*pi*x)+x;
%hold on
%plot(x,y);
legend('10','100','1000');

