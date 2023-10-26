

c = [1,2,5].* 1e-3;

Fc =7; 
Fst=10;
b = 70;
dx = linspace(0.05, 0.05, 1000);


for i=1:3
    Fa(:,i) = (Fc + (Fst - Fc) .* exp(-dx./c(i)) ).*sign(dx) + b .* dx;    
end

plot(dx,Fa');
hold on 