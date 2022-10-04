clear;clc
load data1
[n,m] = size(A);
disp(['共有' num2str(n) '个评价对象,' num2str(m) '个指标'])
judge = input(['这' num2str(m) '个指标需不需要正向化，需要1，不需要0']);
if judge == 1
    pos = input('请输入需要正向化的列');
    disp('输入指标类型(1极小，2区间，3中间)')
    type = input('1/2/3');
    for i = 1 : size(pos,2)
        A(:,pos(i)) = Positive(A(:,pos(i)),type(i),pos(i));
    end
    disp('正向化后A为');
    disp(A)
end

Z = A ./ repmat(sum(A.*A).^0.5,n,1);
disp('标准化矩阵Z=');
disp(Z)
D_P = sum([(Z - repmat(max(Z),n,1)).^2],2).^0.5;
D_N = sum([(Z - repmat(min(Z),n,1)).^2],2).^0.5;
S = D_N./(D_P+D_N);
disp('最后得分为：')
stand_S = S / sum(S)
[sorted_S,index] = sort(stand_S,'descend')


    
    
    