%ECE 302
%Summ 2018
%Computer Assignment 2

%Exercise 1
N = 100000;
pdf = zeros(1,9);
threshold1 = .3;
threshold2 = .4;
threshold3 = .5;
threshold4 = .7;
threshold5 = .8;
threshold6 = .85;
threshold7 = .9;
threshold8 = .95;

for i = 1:N
    num = rand;
    if num <= threshold1
        pdf(1) = pdf(1) + 1;
    elseif num <= threshold2 && num > threshold1
         pdf(2) = pdf(2) + 1;
    elseif num <= threshold3 && num > threshold2
         pdf(3) = pdf(3) + 1;
    elseif num <= threshold4 && num > threshold3
         pdf(4) = pdf(4) + 1;
    elseif num <= threshold5 && num > threshold4
         pdf(5) = pdf(5) + 1;
    elseif num <= threshold6 && num > threshold5
        pdf(6) = pdf(6) + 1;
    elseif num <= threshold7 && num > threshold6
        pdf(7) = pdf(7) + 1;
    elseif num <= threshold8 && num > threshold7
        pdf(8) = pdf(8) + 1;
    else
        pdf(9)= pdf(9) + 1;
    end
end
figure
hold on;
grid on;
axis([0 10 0 35000])
title("PDF of 100,000 Realization of X");
bar(pdf);

%Exercise 2
N = 10000;
result = zeros(1,N);
for i = 1:N
    num = rand;
    if num > 0 && num < (1/2)
        result(i) = sqrt(1/2)*log(2*num);
    else
        result(i) = sqrt(1/2)*log(1/(2*(1-num)));
    end
end

figure
hold on;
grid on;
axis([-5 5 0 .8])
pdf =@(x) (1/sqrt(2))*exp(-sqrt(2)*abs(x));
fplot(pdf);
title('PDF of the Laplacian random variable');

figure
hold on;
grid on;
axis([-5 5 0 .8])
histogram(result,'Normalization','pdf');
title('Normalized Data');

%Exercise 3
x = normrnd(60, 10, 1, 10^5);
y = normrnd(x, x/10, 1, 10^5);
std(y)
