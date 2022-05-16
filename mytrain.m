function[w,b,w_h,b_h]=mytrain(x_train,y_train,hid,step,a)
%train function: input layer 400--> hidden layer neuron number--> output layer 10
%x_test: testing sample pixels
%y_test：testing sample label
%w：output layer weight
%b：output layer bias
%w_h：hidden layer weight
%b_h：hidden layer bias
%step：iteration step number

in = 400; %input layer
out = 10; %output layer
o =1;

w = randn(out,hid);
b = randn(out,1);
w_h =randn(hid,in);
b_h = randn(hid,1);


for i=0:step
    %randomize sample
    r=randperm(4000);
    x_train = x_train(:,r);
    y_train = y_train(:,r);

    for j=1:4000
        x = x_train(:,j);
        y = y_train(:,j);

        hid_put = layerout(w_h,b_h,x);
        out_put = layerout(w,b,hid_put);

        %update on the hidden layer
        o_update = (y-out_put).*out_put.*(1-out_put);
        h_update = ((w')*o_update).*hid_put.*(1-hid_put);

        outw_update = a*(o_update*(hid_put'));
        outb_update = a*o_update;
        hidw_update = a*(h_update*(x'));
        hidb_update = a*h_update;

        w = w + outw_update;
        b = b+ outb_update;
        w_h = w_h +hidw_update;
        b_h =b_h +hidb_update;
    end
  end  
end