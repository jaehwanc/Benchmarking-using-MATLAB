%%Preallocate%%

%%%%%Non-preallocated%%%%%
tic
profile -memory on
n = 10e5;
x(1) = 0;
x(2) = 1;
for k=3:n
    x(k) = n*rand*x(k-2)+n*rand*x(k-1);
end
toc
profreport
%}
%%%%%Preallocated%%%%%%
%{
tic
profile -memory on
n = 10e5;
x=zeros(n,1);
x(1) = 0;
x(2) = 1;
for k=3:n
    x(k) = n*rand*x(k-2)+n*rand*x(k-1);
end
toc
profreport
%}

