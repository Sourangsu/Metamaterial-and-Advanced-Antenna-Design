set(0,'defaultAxesFontName', 'Times New Roman')
set(0,'defaultTextFontName', 'Times New Roman')

a = 27.1; b = 58.9; ar = 10/pi;I = 3401;

muF = @(r) ((r-a)./r).^2;

[f, eps] = readSparamArray('eps.txt',1);
[~, mu] = readSparamArray('mu.txt',1);

figure(1);
subplot(1,2,1);plot(f,real(eps));
line([8.5 8.5], [3.2 3.6], 'Color', 'Black');
xlabel('\itf\rm [GHz]');ylabel('real(\epsilon)');
axis([8 9 3.2 3.6]);
legend('1','2','3','4','5','6','7','8','9','10');
subplot(1,2,2);plot(f,real(mu))
line([8.5 8.5], [-0.5 0.4], 'Color', 'Black');
xlabel('\itf\rm [GHz]');ylabel('real(\mu)');
axis([8 9 -0.5 0.4]);
legend('1','2','3','4','5','6','7','8','9','10');
set(gcf, 'PaperPosition', [-0.6 0 8.75 4]);
set(gcf, 'PaperSize', [7.5 4]);
print -dpdf fig1.pdf;

ri = (a+ar/2:ar:b);
r = (a:0.1:b);
epsr = (b/(b-a))^2*ones(size(r));
mur = muF(r);

epsr_t = interp1(r,epsr,ri);
mur_t = interp1(r,mur,ri);

figure(2);
subplot(1,2,1);plot(ri,real(eps(3401,:)),'or',r,epsr,'b');
xlabel('\itr\rm [mm]');ylabel('real(\epsilon)');axis([25 60 0 4]);legend('simulated \epsilon','target \epsilon');
subplot(1,2,2);plot(ri,real(mu(3401,:)),'or',r,mur,'b');
xlabel('\itr\rm [mm]');ylabel('real(\mu)');axis([25 60 -0.05 0.35]);legend('simulated \mu','target \mu');
set(gcf, 'PaperPosition', [-0.6 0 8.5 4]);
set(gcf, 'PaperSize', [7.5 4]);
print -dpdf fig2.pdf;

fid = fopen('discretize.txt','w');
fprintf(fid,'%f %f\n',[0.001*ri; 0.001*ri]);
fclose(fid);
fid = fopen('eps_real.txt','w');
fprintf(fid,'%f %f\n',[0.001*ri; real(eps(I,:))]);
fclose(fid);
fid = fopen('eps_imag.txt','w');
fprintf(fid,'%f %f\n',[0.001*ri; imag(eps(I,:))]);
fclose(fid);
fid = fopen('mu_real.txt','w');
fprintf(fid,'%f %f\n',[0.001*ri; real(mu(I,:))]);
fclose(fid);
fid = fopen('mu_imag.txt','w');
fprintf(fid,'%f %f\n',[0.001*ri; imag(mu(I,:))]);
fclose(fid);



