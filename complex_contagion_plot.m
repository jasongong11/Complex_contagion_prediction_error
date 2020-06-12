syms f(x,t);
f(x,t) = 1-(1-x).^t;
figure;
ezsurf(f, [1,30,0.001,0.8]);




x = 0:0.05:1;
y = 1:30;
[X,Y] = meshgrid(x,y);

Z = zeros(size(x,2),size(y,2));
for i = 1:size(Z,1)
    for j = 1:size(Z,2)
        Z(i,j) = 1-symprod(1-0.2*x(i).^(k-1),k,1,y(j));
    end
end
figure;
surf(Y,X,Z')
title('0.2')
zlim(0:1)

Z = zeros(size(x,2),size(y,2));
for i = 1:size(Z,1)
    for j = 1:size(Z,2)
        Z(i,j) = 1-symprod(1-0.4*x(i).^(k-1),k,1,y(j));
    end
end
figure;
surf(Y,X,Z')
title('0.4')
zlim(0:1)

Z = zeros(size(x,2),size(y,2));
for i = 1:size(Z,1)
    for j = 1:size(Z,2)
        Z(i,j) = 1-symprod(1-0.6*x(i).^(k-1),k,1,y(j));
    end
end
figure;
surf(Y,X,Z')
title('0.6')
zlim(0:1)

Z = zeros(size(x,2),size(y,2));
for i = 1:size(Z,1)
    for j = 1:size(Z,2)
        Z(i,j) = 1-symprod(1-0.8*x(i).^(k-1),k,1,y(j));1-symprod(1-0.4*x(i).^(k-1),k,1,y(j))
    end
end
figure;
surf(Y,X,Z')
title('0.8')
zlim(0:1)