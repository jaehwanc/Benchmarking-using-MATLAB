%%%Multi-Thread(explitcit)%%%
myCluster = parcluster('local');
myCluster.NumWorkers = 4;
saveProfile(myCluster);
tic
y = zeros(1,10e6);
%parfor i=1:10e6
%parfor i=1:10e4
%for i=1:10e6
for i=1:10e4
    x = 0;
    for j=1:100
        x=i+1;
    end
    y(i) = x;
end
toc