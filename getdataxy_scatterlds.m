function [xp,yp]=getdataxy_scatterlds(name,colnumber1,colnumber2,size11)
textname = name;
data = load(textname);
p = data(:,colnumber1);
p1= data(:,colnumber2);
% x0 = [0.36:0.001:0.46];
% y0 = [-0.1:0.012:1.1];
% x0 = [0.36:0.001:0.46];
% y0 = [-0.1:0.012:1.1];
% z0 = [1:1:64];
% xs = [32];
% ys = [];
% zs = [];
% [x,y] = meshgrid(x0,y0);
nx = size11;
ny = 5*size11;
% nz = 64;
pp = ones(nx,ny);
xp = pp(:); yp=xp;

totall=0;
for i=1:nx
    for j=1:ny
        totall = totall+1;

%             pp(i,j) = p((i-1)*ny+j);
            xp(totall) = p(totall);
            yp(totall) = p1(totall);
    end
end