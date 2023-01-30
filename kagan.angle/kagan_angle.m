%This script calls the function kagan.m and 
%calculates the kagan angle between two fault planes 
% We assume the first solution is the "best solution" and compute the angle
% between the first and the rest 
clear;clc;close all

%% load data
load input/Solution.mat
addpath('./src')
%% Preallocate memory
N=length(Solution{1}.dc.F1(:,1))-1;

rot_dc=NaN(N-1,1);rot_dev=NaN(N-1,1);rot_full=NaN(N-1,1);
theta_dc=NaN(N-1,1);theta_dev=NaN(N-1,1);theta_full=NaN(N-1,1);
phi_dc=NaN(N-1,1);phi_dev=NaN(N-1,1);phi_full=NaN(N-1,1);

%% Double Couple
for i=2:N
[rot_dc(i-1,1),theta_dc(i-1,1),phi_dc(i-1,1)]=kagan(Solution{1}.dc.F1(1,1:3),Solution{1}.dc.F1(i,1:3));

%% Deviatoric
[rot_dev(i-1,1),theta_dev(i-1,1),phi_dev(i-1,1)]=kagan(Solution{1}.deviatoric.F1(1,1:3),Solution{1}.deviatoric.F1(i,1:3));

%% Full MT
[rot_full(i-1,1),theta_full(i-1,1),phi_full(i-1,1)]=kagan(Solution{1}.full.F1(1,1:3),Solution{1}.full.F1(i,1:3));
end
%% Create plots
my_plot(rot_dc,'DC')
my_plot(rot_dev,'Dev.')
my_plot(rot_full,'Full-MT')