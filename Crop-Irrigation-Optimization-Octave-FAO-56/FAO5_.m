function z = FAO5_ (x)
%  wr_goal=0.74;
  global wr_goal;
  global Ky_;
  global ETp_;
  global Peff_;
  global Irr_;
  


  temp=1;
  wat_=0;
  wat_deficit=0;
  wat_tot=0;
  
  for i=1:12
    if Ky_(i)==0 || ETp_(i)==0 || Irr_(i)==0
      temp0=1;
    else
      wat_=x(i)*Irr_(i);
      wat_deficit=wat_deficit+wat_;
      wat_tot=wat_tot+Irr_(i);
      
      temp0=1-Ky_(i)*(1-(wat_+Peff_(i))/ETp_(i));
    endif
    temp=temp*temp0;

  endfor

  wr_=wat_deficit/wat_tot;
  yr_=temp;
  
  
  z(1)=wr_;
  z(2)=yr_;

endfunction;