clear;
%clc;

j=3;

yr_mat=zeros(13,996);
wr_mat=zeros(13,996);


#alpha_mat=zeros(12,13,180);


ETp_mat=csvread('data_ETp_mm.csv');
Irr_mat=csvread('data_Irr_mm.csv');
Peff_mat=csvread('data_Peff_mm.csv');
Ky_mat=csvread('data_Ky_.csv');

global Ky_;
global Irr_;
global Peff_;
global ETp_;

global wr_goal;

names_ = ['wheat';'seed_corn';'sugar_beet';'rapeseed';'chickpea';'tomato';'alfalfa';'potato';'fodder_corn';'bean';'barley';'grape';'apple'];

for j=1:13

  Ky_=Ky_mat(:,j);
  ETp_=ETp_mat(:,j);
  Peff_=Peff_mat(:,j);
  Irr_=Irr_mat(:,j);

  names_(j,:);

  str_=strcat('zzz_j=',num2str(j),',',names_(j,:),'.txt');

  file_ = fopen(str_,'w');
  fprintf(file_,'%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\t%8s\n','wr_goal','wr','yr','x(1)','x(2)','x(3)','x(4)','x(5)','x(6)','x(7)','x(8)','x(9)','x(10)','x(11)','x(12)');

    for counter_=0:995
      
      wr_goal  =1-counter_/1000;
      %wr_goal=0.74;

      format short g;

      %starting point isn't important
      x0=ones(13,1)*0.5+0.5*rand(13,1);
      %x0=ones(13,1);
      %x0=zeros(13,1);

      %x0= [.890417009345792; 0; 0; 0; 0; 0; 1; 0; 1; .997792130245971; .552237985793625; .574772551200056;0];
      lb=zeros(13,1); %lower bound is 0
      ub=ones(13,1); %upper bound is 1

      [x, obj, info, iter, nf, lambda] = sqp (x0, @FAO4_, @g, @h, lb,ub,[]);
      %x1 x2 x3 ... x12    0    wr_goal  wr_ yr_    
      
      zz=FAO5_(x);
      fprintf(file_,'%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n',wr_goal,zz(1),zz(2),x(1),x(2),x(3),x(4),x(5),x(6),x(7),x(8),x(9),x(10),x(11),x(12));
      %fprintf(file_,'%f\n',zz(2));
     
      yr_mat(j,counter_+1)=zz(2);
      wr_mat(j,counter_+1)=zz(1);

    endfor

  fclose("all");

endfor