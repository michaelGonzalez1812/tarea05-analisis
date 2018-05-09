function comparacion()
  f = @(x, y) 100 - y;
  
  id1 = tic();
  [t1, y1] = ode45 (f, [0: 1 : 200], 5);  
  tode45 = toc(id1);
  
  id2 = tic();
  [t2, y2] = ode23 (f, [0: 1 : 200], 5);
  tode23 = toc(id2);
  
  id3 = tic();
  [t3, y3] = RK4 (f, 0, 200, 5, 1);
  tRK4 = toc(id3);
  
  plot(t1, y1, 'r', t2, y2, 'm', t3, y3, 'g');
  legend ("ode45", "ode23", "RK4");
  
  disp("ode45-----------------------------");
  disp("pasos:");
  disp(length(t1));
  disp("tiempo:");
  disp(tode45);
  disp("ode23-----------------------------");
  disp("pasos:");
  disp(length(t2));
  disp("tiempo:");
  disp(tode23);
  disp("RK4-------------------------------");
  disp("pasos");
  disp(length(t3));
  disp("tiempo:");
  disp(tRK4);
end