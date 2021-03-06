function plotData(X,y)
%PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

%create figure
figure; 
hold on; %as want both on sets on same figure

%want postive and negative examples as different markers
%% Find Indices of Positive and Negative Examples 
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
'MarkerSize', 7);

xlabel('Exam 1 Score');
ylabel('Exam 2 Score');
legend('Admitted','Non admitted');

hold off;

end
