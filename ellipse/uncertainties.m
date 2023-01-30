%Here write a descprition
clear; clc ; close all

%% load file
load input/Solution.mat
addpath('./src')
%% First sort the Fault Planes
[F1_new,F2_new]=fps_sorting(Solution{1}.deviatoric.F1,Solution{1}.deviatoric.F2);

%% Calculate ellipse for Strike/Dip
[sx,sy,rxy_ellipse,inxy_points, outxy_points]=error_ellipse(F1_new(:,1),F1_new(:,2));

%% Calculate ellipse for Rake/Strike
[sz,sxx,rzx_ellipse,inzx_points, outzx_points]=error_ellipse(F1_new(:,3),F1_new(:,1));

%% Plot Strike/Dip 
my_plot(inxy_points,outxy_points,rxy_ellipse,F1_new(:,1),F1_new(:,2),'Strike','Dip', sx, sy)

%% Plot Strike/Rake 
my_plot(inzx_points,outzx_points,rzx_ellipse,F1_new(:,3),F1_new(:,1),'Rake','Strike', sz, sxx)

