step=20;
a=0.3;
hid=20;
%generate random index
r=randperm(5000);
r=r';
Xt = [X r];
yt = [y r];
%use random index to mix up samples
Xt=sortrows(Xt,401);
yt=sortrows(yt,11);
%train test split
x_train=Xt(1:4000,1:400);
x_test=Xt(4001:5000,1:400);
x_test=x_test';
y_train=yt(1:4000,1:10);
y_test=yt(4001:5000,1:10);
y_test=y_test';
%normalize
x_train = mapminmax(x_train,0,1);
x_test =mapminmax(x_test,0,1);
%add Gaussian noise
n=randi([1,20]);
randnoise=0.4.*ones(20,4000);
noise=zeros(400,4000);
noise((n*20-19):(n*20),1:4000)=randnoise;
x_train=x_train';
x_train=x_train+noise;
x_train = mapminmax(x_train,0,1);
y_train=y_train';
%train
fprintf('step number is %d,learning factor is %.2f, neuron number is %d,',step,a,hid);
[w1,b1,w_h1,b_h1]=mytrain(x_train,y_train,hid,step,a);  
%test
mytest(x_test,y_test,w1,b1,w_h1,b_h1);