function [ Vertical_line ] = x_vertical( ti,tj,a,om,t )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Vertical_line  = a/2*(exp(om*t)*(exp(-om*ti)-exp(-om*tj))).*...
             (1 - stepfun(t,ti))...
          + a/2*(2 - exp(-om*(t-ti)) - exp(-om*(tj-t))).*...
             (stepfun(t,ti)-stepfun(t,tj))...
          + a/2*(exp(-om*t)*(exp(om*tj)-exp(om*ti))).*...
             stepfun(t,tj);


end
