% =========================================================================
%                          Written by Xin Wang and Yi Qin
% =========================================================================
%% the derivative of ReLU
function  X = dev_ReLU(A,nn)


X=zeros(size(A));       % 与A同样size的矩阵，用于存储计算得到的矩阵 

% 大于等于0的部分
idx    = find(A>=0);    % A中大于0的元素的坐标（该坐标按照从上到下，从左到右的顺序依次检索）
X(idx) = 1;             % 对这一部分直接将导数赋值为1

% 小于0的部分
idx    = find(A<0);     % 对净输入值小于0的这部分，将其到导数直接赋值为0.01
X(idx) = 0;