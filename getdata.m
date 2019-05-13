function pp=getdata(name)
textname = name;
data = load(textname);
p = data(:,8);
x0 = [1:1:128];
y0 = [1:1:128];
z0 = [1:1:32];
% xs = [32];
% ys = [];
% zs = [];
[x,y,z] = meshgrid(x0,y0,z0);
nx = 128;
ny = 128;
nz = 32;
pp = ones(nx,ny,nz);
for i=1:nx
    for j=1:ny
        for k=1:nz
            pp(i,j,k) = p((i-1)*ny*nz+(j-1)*nz+k);
        end
    end
end