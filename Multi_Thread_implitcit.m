%%%Multi-Thread(implitcit)%%%
n = 1000;
x = rand(n);   
b = rand(n); 

for k=3:n
    x(k) = n*rand*x(k-2)+n*rand*x(k-1);
end

for i=1:5
  m = 2^(i-1);
  maxNumCompThreads(m);
  tic                   
  y = x*b;             
  wait_time(i) = toc;      
  Spd_up(i) = wait_time(1)/wait_time(i);
  Efficiency(i) = 100*Spd_up(i)/m;
end
 