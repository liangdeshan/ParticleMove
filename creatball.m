function creatball(pos,r,ballcolor)

[m,~] = size(pos);
[x, y, z]=sphere(8);

zz = rand(m,1)*0.8;
for ii = 1:m
    pos0 = pos(ii,:);
    hold on
    surf(r*x+pos0(1),r*y+pos0(2),r*z+pos0(3)+zz(ii),'FaceColor',ballcolor,'LineStyle','none','EdgeColor','none');%»æÖÆ°ë¾¶Îª2µÄÇò
%     disp(ii)
end
end