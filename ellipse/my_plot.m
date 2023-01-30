function my_plot(in_points,out_points,r_ellipse,x,y,string1, string2, smajor,sminor)

figure 

plot(in_points(:,1),in_points(:,2),'k+')
axis square
hold on
%points outside ellipse
plot(out_points(:,1),out_points(:,2),'r+')
%Draw the error ellipse
plot(r_ellipse(:,1) + mean(x),r_ellipse(:,2) + mean(y),'-')
hold on;
xlabel(sprintf('%s [deg]',string1))
ylabel(sprintf('%s [deg]',string2))
grid minor

title(sprintf('%sErr %4.1f^o %sErr %4.1f^o',string1, smajor,string2, sminor))
set(gca,'FontSize',13)


end %end of function
