


% Definicao do Range
x = linspace(0,5*pi/2, 500);

y = zeros(4,numel(x));

y(1,:) = sin(x);
y(2,:) = cos(x);
y(3,:) = 2.*y(1,:).*y(2,:);
y(4,:) = y(1,:)./exp(x);

label_y = ['sinx', 'cosx','2*sinx*cosx', 'sinx/expx' ];
label_x = 'Dom(x)';
for i=1:size(y,1)
    subplot(2,2,i);

    ylabel(label_y(i));
    xlabel(label_x);
    plot(x, y(i,:), "rd");

end
