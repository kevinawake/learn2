function [posit_x] = Positive(x,type,i)
 if type == 1
    disp(['第' num2str(i) '列是极小型，正在正向化'])
    posit_x = Min2Max(x);
    disp(['第' num2str(i) '列极小型正向化处理完成'])
 elseif type == 2
    disp(['第' num2str(i) '列是中间型，正在正向化'])
    best = input('请输入最佳值');
    posit_x = Mid2Max(x,best);
    disp(['第' num2str(i) '列中间型正向化处理完成'])
 elseif type == 3
    disp(['第' num2str(i) '列是区间型'])
    a = input('请输入区间下界');
    b = input('请输入区间上界');
    posit_x = lnter2Max(x,a,b);
    disp(['第' num2str(i) '列区间型正向化处理完成'])
 else
    disp('没有这种类型')
 end
end