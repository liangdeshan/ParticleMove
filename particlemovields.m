clear; clc;
close all;
% x=linspace(0,1,100);
% [X,Y] = meshgrid(x,x);
% N=100;
% for i = 1:N
%     Z = sin(2*pi*(X-i/N)).*sin(2*pi*(Y-i/N));
%     surf(X,Y,Z)
%     M(i)=getframe(gcf);
% end
% movie2avi(M,'WaveMovie.avi');
nx = 100;
sz1 = 8;
sz2 = 16;
a1 = '3_random_0.001n.txt';
a2 = '4_random_0.001n.txt';
% a = strcat('../particle/',num2str(i),'_random_0.02.txt');
[xp,yp]=getdataxy_scatterlds(a1,4,5,nx);
%     subplot(3,1,1);

rxy = xp.^2+yp.^2;

xp = xp(rxy>eps);
yp = yp(rxy>eps);
posball = [xp,yp,xp*0];
creatball(posball,0.3,[0,0,1])
hold on
%%
[xp,yp]=getdataxy_scatterlds(a2,4,5,nx);
% subplot(3,1,1);
rxy = xp.^2+yp.^2;

xp = xp(rxy>eps);
yp = yp(rxy>eps);


posball = [xp,yp,xp*0];
creatball(posball,0.4,[1,0,0])

xlabel('l/um)');
ylabel('d/um');
step = 5e4*99;
%title(['NPs concenration distributionl']);
set(gcf,'position',[200,100,1200,300]);
axis on

box(gca,'off');

set(gca,'BoxStyle','full','DataAspectRatio',[1 1 1],'LineWidth',1.2,...
    'PlotBoxAspectRatio',[55 15 1]);
axis([-1,102,-1,20]);
%%
hold on
x=[0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0];
y=[0 0 1 0 0 0;0 1 1 1 0 0;0 1 1 1 1 1;0 0 1 0 1 1];
z=[0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1];

xxb = x*100+1;
yyb = y*20;
zzb = z*1.5;
hbox1=fill3(xxb,yyb,zzb, 'r','facealpha',0.2,'FaceColor',[1,1,0],'EdgeAlpha','0.7');
% delete(hbox1)
%%
axis(gca,'tight')
box(gca,'on');
set(gca,'BoxStyle','full','DataAspectRatio',[1 1 1]);
axis([0,100,0,20]);
axis off
%%
h=light;
lightangle(h,45,45)
% h1=light;
% lightangle(h1,-45,225)
lighting gouraud


%set(gcf, 'PaperPositionMode', 'auto')   % Use screen sizes

% print(gcf,'-dpng','-r400',name);
%print(gcf,'-dpng','-r900','test113.png','-opengl');




% % for i=1:199
% %     a = strcat('./particle/',num2str(i),'_random_0.02.txt');
% %     [xp,yp]=getdataxy_scatter(a,4,5,nx);
% % %     subplot(3,1,1);
% %     scatter(xp,yp,sz,'filled');
% %     xlabel('x(200nm)');
% %     ylabel('y(200nm)');
% %     step = 5e4*i;
% %     title(['step ',num2str(step)]);
%     a = strcat('./particle/',num2str(i),'_random_0.02.txt');
%     [xp,yp]=getdataxy_scatter(a,4,5,nx);
%     subplot(3,1,2);
%     scatter(xp,yp,sz,'filled');
%     xlabel('x');
%     ylabel('y');
%     a = strcat('./particle/',num2str(i),'_random.txt');
%     [xp,yp]=getdataxy_scatter(a,4,5,nx);
%     subplot(3,1,3);
%     scatter(xp,yp,sz,'filled');
%     xlabel('x');
%     ylabel('y');

%     M(i)=getframe(gcf);
% %       saveas(gcf,['./0.02/0.02_step',num2str(step),'.bmp']);
% % end
% movie2avi(M,'partivlemove.avi');