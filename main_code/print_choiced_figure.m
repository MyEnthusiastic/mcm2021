clear
%choose you want to use 16/22
load data_a_b22
load data_cons22

%which sample you wanna chooce and how long you want to print
choice = [8 19 22 23 29 30];
plot_t = 250;

[x, y, r, d] = deal(zeros(plot_t,1));
x(1)=1;
name={'Armillaria gallica','Merulius tremullosus','Phlebiopsis flavidoalba',...
    'Phellinus gilvus','Phlebia acerina','Pycnoporus sanguineus'};

for i = 1:6
    sample_number = choice(i);
    m= trade_off(sample_number);
    r_star= extension_rate(sample_number);
    a = a_b(sample_number, 1);
    b = a_b(sample_number, 2);
    for t=1:plot_t
        r(t+1)=(1-y(t)/100)*r_star/100*(1-x(t)/100);
        x(t+1)=x(t)*(1+r(t+1));
        d(t+1)=(a/1000*r(t+1)+b/1000*exp(m))*(1-y(t)/100);
        y(t+1)=y(t)+d(t)*x(t+1);
    end
    subplot(2, 3, i)
    plot(1:plot_t+1,y,'-',122, y(122),'+', ...
        'LineWidth',1.5)
    axis([0 250 0 100])
    xlabel("time(day)")
    ylabel("decomposition rate(%)")
    title(name(i))
end