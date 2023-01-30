function my_plot(data, string)

%Calculate mean and median
avg=mean(data);
md=median(data);
st=std(data);

%Put stats on title
my_title=sprintf('%s mean: %4.1f^o median:%4.1f^o std: %4.1f^o ',string, avg, md, st);

%Now plot
figure
h=histogram(data)
h.FaceColor=[192/255 192/255 192/255];
h.EdgeColor=[0 0 0];
title(my_title)
ylabel('N obs')
xlabel('Kagan Angle (deg)')
set(gca,'FontSize',14)
grid on
hold on
%Overlay mean value
xline(avg, 'Color', 'r', 'LineWidth', 2);
%Overlay median Value
xline(md, 'Color', 'k', 'LineWidth', 2);

legend('KaganAngle', 'Mean', 'Median')
end