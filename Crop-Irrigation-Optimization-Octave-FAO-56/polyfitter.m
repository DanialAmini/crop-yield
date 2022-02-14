

for j=1:13
  index_0=996;
  for i=0:995
    if yr_mat(j,i+1)<0
      index_0=i;
      break;
    endif
  endfor
  
  printf("elseif j=%d then\n",j);
##  res_2=polyfit(wr_mat(j,:),yr_mat(j,:),2);
##  printf("\tyy=%g*xx ^ 2+%g*xx+%g   \'j=%d \n",res_2(1),res_2(2),res_2(3),j);
##  


  res_2=polyfit(wr_mat(j,1:index_0),yr_mat(j,1:index_0),7);
  printf("\tyy=%g*x ^ 7+%g*x ^6+%g*x ^5+%g*x ^4+%g*x ^3+%g*x ^2+%g*x+%g   \'j=%d \n",res_2(1),res_2(2),res_2(3),res_2(4),res_2(5),res_2(6),res_2(7),res_2(8),j);
  printf("index 0=%d\n",index_0);

  
endfor


for j=1:13
  index_half=181;
  for i=0:180
    if yr_mat(j,i+1)<0.5
      index_half=i+1;
      break;
    endif
  endfor
  %disp([j,index_half]);
  
  
##  printf("elseif j=%d then\n",j);
##  printf("\tx=max(x,%g)\n",wr_mat(j,index_half));
##  #res_=polyfit(wr_mat(j,1:index_half),yr_mat(j,1:index_half),2);
##  #printf("\ty=%g*x ^ 2+%g*x+%g   \'j=%d \n",res_(1),res_(2),res_(3),j);
##  res_=polyfit(wr_mat(j,1:index_half),yr_mat(j,1:index_half),3);
##  printf("\ty=%g * x ^ 3 + %g*x ^ 2+%g*x+%g   \'j=%d \n",res_(1),res_(2),res_(3),res_(4),j);
##  
  
endfor
