function obj = FAO4_ (x)
  global wr_goal;
  penalty_=2000;

  z = FAO5_ (x);
  
  wr_=z(1);
  yr_=z(2);

  
  z=yr_-penalty_*(wr_-wr_goal)^2;
  
  obj=-z;
endfunction;