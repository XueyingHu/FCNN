function[sum]= mytest(x_test,y_test,w,b,w_h,b_h)
%x_test: testing sample pixels
%y_test：testing sample label
%w：output layer weight
%b：output layer bias
%w_h：hidden layer weight
%b_h：hidden layer bias

test = zeros(10,1000);
for k=1:1000
    x = x_test(:,k);

    hid = layerout(w_h,b_h,x);
    test(:,k)=layerout(w,b,hid);

    %First way of accuracy：accurate output count
    [t,t_index]=max(test);
    [y,y_index]=max(y_test);
    sum = 0;
    for p=1:length(t_index)
        if t_index(p)==y_index(p)
            sum =sum+1;
        end
    end
end

fprintf('Accuracy is %d/1000\n',sum);
%Second way of accuracy：plotconfusion function
plotconfusion(y_test,test);
end