
% Definicao do Range

b_value = [0.5, 1.0, 5.0, 20.0];
dom = linspace(-6,6, 12/0.01);


y = zeros(numel(b_value), numel(dom));
for i=1:numel(b_value)
    subplot(2,2, i);
    y(i,:) = 1./(1+exp(b_value(i).*dom));
    title("Grafico - " + num2str(b_value));
    plot(dom, y(i,:), 'ro');
end

