%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
f = @(n,x) n.*x.*(0 <= x).*(x<= 1./n) + (2-n.*x).*(1./n <= x).*(x <= 2./n);

figure;
hold on
grid on
x = linspace(-0.5,2.5,500);
axis([-0.5 2.5 -0.2 1.2])
%daspect([1 6 1])
for i=1:1:6
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%% 
f = @(n,x) (n - n.^2.*x).*(0 <= x).*(x<= 1./n);

figure;
hold on
grid on

x = linspace(-0.5,2.5,500);
axis([-0.2 1.2 -0.2 4.2])
%daspect([1 6 1])

sty = {'-', '--', '-.',':'};


for i=1:1:4
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), string(sty(i)),'Color','k', 'LineWidth', 1, 'DisplayName',txt);
end
legend show