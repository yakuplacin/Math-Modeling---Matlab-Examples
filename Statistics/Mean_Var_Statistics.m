format long g;
file = 'R2.xlsx';
data = xlsread(file); 
columnData = data(15,:);
sample = columnData;
meanVals = zeros(1,30);
varVals = zeros(1,30);
sampleSizes = 1:30;

for n = 1:30
    subset = sample(randperm(length(sample),n));
    meanVals(n) = mean(subset);
    varVals(n) = var(subset);
    fprintf('Sample %d mean value is:%.5f and the variance is:%.5f\n',n,meanVals(n),varVals(n));
end

figure;
subplot(2,1,1);
plot(sampleSizes, meanVals);
xlabel('Size of Sample');
ylabel('THE MEAN');

overallMean = mean(sample);
overallVariance = var(sample);
hold on;
plot([1, 30], [overallMean, overallMean], 'p--');
hold off;

subplot(2,1,2);
plot(sampleSizes, varVals);
xlabel('Size of Sample');
ylabel('THE VARIANCE');

overallVar = var(sample);
hold on;
Pll = plot([1, 30], [overallVar, overallVar], 'p--');
hold off;
overallMean = mean(columnData);
fprintf('Overall Mean: %.5f \n',overallMean);
overallMean = mean(columnData);
fprintf('Overall Varience: %.5f \n',overallVariance);