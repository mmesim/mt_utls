%Here write a descprition
clear; clc ; close all

%% load file
load Solution.mat

%% First sort the Fault Planes
[F1_new,F2_new]=fps_sorting(Solution{1}.deviatoric.F1,Solution{1}.deviatoric.F2);

