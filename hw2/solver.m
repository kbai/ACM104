function[results] = solver(N,func_handle,a,b)



A = zeros(N+1);
r = zeros(1,N+1);
for ii = 1:1:N-1
    A(ii,ii) = 1;
    A(ii,ii+1) = -2;
    A(ii,ii+2) = 1;
end
A(N,1) = 1;
A(N + 1 , N + 1) = 1;
X = linspace(0,1,N+1);
h = 1/N;
for ii = 1:1:N-1
    r(ii) = h^2*func_handle(X(ii + 1));
end
r(N) = a;
r(N+1) = b;

results = A\r';

plot(X,results);
end

    

