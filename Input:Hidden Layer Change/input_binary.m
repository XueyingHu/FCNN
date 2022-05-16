step=22;
a=0.35;
hid=30;
average=0;
%generate random index
r=randperm(5000);
r=r';
Xt = [X r];
yt = [y r];
%use random index to mix up samples
Xt=sortrows(Xt,401);
yt=sortrows(yt,11);
%取出训练和测试
x_train=Xt(1:4000,1:400);
x_train=x_train';
x_test=Xt(4001:5000,1:400);
x_test=x_test';
y_train=yt(1:4000,1:10);
y_train=y_train';
y_test=yt(4001:5000,1:10);
y_test=y_test';
%normalize
x_train = mapminmax(x_train,0,1);
x_train = round(x_train,3);
x_test =mapminmax(x_test,0,1);
%train
fprintf('step number is %d,learning factor is %.2f, neuron number is %d,',step,a,hid);
for i=1:5
[w1,b1,w_h1,b_h1]=mytrain(x_train,y_train,hid,step,a);  
%test
result=mytest(x_test,y_test,w1,b1,w_h1,b_h1);
average=average+result;
end
average=average/5;
fprintf('Accuracy is %.2f/1000\n',average);