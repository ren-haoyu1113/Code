% =========================================================================
%                          Written by Xin Wang and Yi Qin
% =========================================================================
function X = dev_tanh_opt(A)

t = tanh_opt(A);
X = 1.7159 * 2/3 * (1 - 1/(1.7159)^2 * t .^2);
%}