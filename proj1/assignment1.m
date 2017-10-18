set(0,'defaultAxesFontName', 'Times New Roman')
set(0,'defaultTextFontName', 'Times New Roman')

c = 299.79; mu = 1; d = 1;
[f, eps] = readMatProps('spleen_datafit.txt',1);
n = sqrt( eps * mu );
z = sqrt( mu ./ eps );
k0 = 2*pi*f/c;
S21 = 1./(cos(n.*k0*d)+(1i/2)*(z+1./z).*sin(n.*k0*d));
S11 = (1i/2)*(z-1./z).*sin(n.*k0*d).*S21;
[fsim, S11sim, S21sim ] = readSparams('s0.txt',20);

fig = figure(1);
subplot(1,2,1); plot(f,abs(S11),'k',fsim,abs(S11sim),'ok');
axis([0,70,0,1]);
xlabel('\itf\rm [GHz]');title('|\itS\rm_{11}|');legend('analytical','simulation');
subplot(1,2,2); plot(f,abs(S21),'k',fsim,abs(S21sim),'ok')
axis([0,70,0,1]);
xlabel('\itf\rm [GHz]');title('|\itS\rm_{21}|');legend('analytical','simulation');
set(gcf, 'PaperPosition', [-0.75 0 8.75 2.5]);
set(gcf, 'PaperSize', [7.5 2.5]);
print -dpdf fig1.pdf;

fig = figure(2);
[fsim, S11sim, S21sim ] = readSparams('s0.txt',20);
subplot(2,2,1); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,2); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
[fsim, S11sim, S21sim ] = readSparams('s1.txt',20);
subplot(2,2,3); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11} (reference plane corrected)');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,4); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21} (reference plane corrected)');legend({'analytical real','analytical imaginary','simulation real','simulation imaginary'},'Position',[.78 .15 0.1 0.05]);
set(gcf, 'PaperPosition', [-0.75 0 8.75 6]);
set(gcf, 'PaperSize', [7.5 6]);
print -dpdf fig2.pdf;

fig = figure(3);
[fsim, S11sim, S21sim ] = readSparams('s0.txt',5);
subplot(2,2,1); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,2); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
[fsim, S11sim, S21sim ] = readSparams('s1.txt',5);
subplot(2,2,3); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11} (reference plane corrected)');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,4); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21} (reference plane corrected)');legend({'analytical real','analytical imaginary','simulation real','simulation imaginary'},'Position',[.78 .15 0.1 0.05]);
set(gcf, 'PaperPosition', [-0.75 0 8.75 6]);
set(gcf, 'PaperSize', [7.5 6]);
print -dpdf fig3.pdf;

fig = figure(4);
[fsim, S11sim, S21sim ] = readSparams('s0.txt',20);
subplot(2,2,1); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,2); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
[fsim, S11sim, S21sim ] = readSparams('s2.txt',20);
subplot(2,2,3); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11} (reference plane corrected)');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,4); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,70,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21} (reference plane corrected)');legend({'analytical real','analytical imaginary','simulation real','simulation imaginary'},'Position',[.78 .15 0.1 0.05]);
set(gcf, 'PaperPosition', [-0.75 0 8.75 6]);
set(gcf, 'PaperSize', [7.5 6]);
print -dpdf fig4.pdf;

fig = figure(5);
[fsim, S11sim, S21sim ] = readSparams('s0.txt',5);
subplot(2,2,1); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,2); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21}');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
[fsim, S11sim, S21sim ] = readSparams('s2.txt',5);
subplot(2,2,3); plot(f,real(S11),'b',f,imag(S11),'r',fsim,real(S11sim),'ob',fsim,imag(S11sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{11} (reference plane corrected)');legend('analytical real','analytical imaginary','simulation real','simulation imaginary');
subplot(2,2,4); plot(f,real(S21),'b',f,imag(S21),'r',fsim,real(S21sim),'ob',fsim,imag(S21sim),'or')
axis([0,3,-1,1]);
xlabel('\itf\rm [GHz]');title('\itS\rm_{21} (reference plane corrected)');legend({'analytical real','analytical imaginary','simulation real','simulation imaginary'},'Position',[.78 .15 0.1 0.05]);
set(gcf, 'PaperPosition', [-0.75 0 8.75 6]);
set(gcf, 'PaperSize', [7.5 6]);
print -dpdf fig5.pdf;

kF = @(f) 2*pi*f/c;
nF = @(f,r,tp,d,s,p) (s.*acos((1-(r.^2-tp.^2))./(2*tp))+2*pi*p)./(kF(f)*d);
nHF = @(f,r,tp,d) acosH((1-(r.^2-tp.^2))./(2*tp))./(kF(f)*d);
zF = @(f,r,tp) sqrt(((1+r).^2-tp.^2)./((1-r).^2-tp.^2));


[fModel, epsModel] = readMatProps('spleen_datafit.txt',1);
muModel = ones(size(fModel,1),1);

% no branch correction
[fread, S11, S21] = readSparams('s2.txt',10);
n = nF(fread,S11,S21,d,1,0);
z = zF(fread,S11,S21);
eps_nbc = n./z; mu_nbc = n.*z;

% branch correction
[fread, S11, S21] = readSparams('s2.txt',1);
n = nHF(fread,S11,S21,d);
z = zF(fread,S11,S21);
fread = fread(1:10:end);n = n(1:10:end);z = z(1:10:end);
eps_bc = n./z; mu_bc = n.*z;

fig = figure(6);
subplot(2,2,1); plot(f,real(epsModel),'b',f,imag(epsModel),'r',fread,real(eps_nbc),'ob',fread,imag(eps_nbc),'or');
axis([0,70,-50,100]);
xlabel('\itf\rm [GHz]');title('\epsilon (without branch correction)');legend('model real','model imaginary','extracted real','extracted imaginary');
subplot(2,2,2); plot(f,real(muModel),'b',f,imag(muModel),'r',f,real(muModel),'b',fread,real(mu_nbc),'ob',fread,imag(mu_nbc),'or');
axis([0,70,-1,2]);
xlabel('\itf\rm [GHz]');title('\mu (without branch correction)');legend('model real','model imaginary','extracted real','extracted imaginary');
subplot(2,2,3); plot(f,real(epsModel),'b',f,imag(epsModel),'r',fread,real(eps_bc),'ob',fread,imag(eps_bc),'or')
axis([0,70,-50,100]);
xlabel('\itf\rm [GHz]');title('\epsilon (with branch correction)');legend('model real','model imaginary','extracted real','extracted imaginary');
subplot(2,2,4); plot(f,real(muModel),'b',f,imag(muModel),'r',fread,real(mu_bc),'ob',fread,imag(mu_bc),'or')
axis([0,70,-1,2]);
xlabel('\itf\rm [GHz]');title('\mu (with branch correction)');legend('model real','model imaginary','extracted real','extracted imaginary');
set(gcf, 'PaperPosition', [-0.75 0 8.75 6]);
set(gcf, 'PaperSize', [7.5 6]);
print -dpdf fig6.pdf;

% spherical inclusion metamaterial
epsMGF = @(epsi,epsm,del) epsm.*(2*(1-del)*epsm+(1+2*del)*epsi)./((2+del)*epsm+(1-del)*epsi);
ri = 0.4;
[fModel, epsModel] = readMatProps('spleen_datafit.txt',2);
muModel = ones(size(fModel,1),1);
[fModel, epsi] = readMatProps('water.txt',2);
[f, S11, S21] = readSparams('s3.txt',2);
n = nHF(f,S11,S21,d);
z = zF(f,S11,S21);
f = f(1:10:end);n = n(1:10:end);z = z(1:10:end);
eps = n./z; mu = n.*z;
del = 4/3*pi*ri^3/d^3;
epsMG = epsMGF(epsi,epsModel,del);
fig = figure(7);
subplot(2,1,1);plot(fModel,real(epsMG),'b',fModel,imag(epsMG),'r',f,real(eps),'ob',f,imag(eps),'or');
axis([0,70,-100,100]);
xlabel('\itf\rm [GHz]');title('\it\epsilon (with branch correction)');legend('Maxwell-Garnett real','Maxwell-Garnett imaginary','extracted real','extracted imaginary');
subplot(2,1,2);plot(fModel,real(muModel),'b',fModel,imag(muModel),'r',f,real(mu),'ob',f,imag(mu),'or');
axis([0,70,-1,2.5]);
xlabel('\itf\rm [GHz]');title('\it\mu (with branch correction)');legend('Maxwell-Garnett real','Maxwell-Garnett imaginary','extracted real','extracted imaginary');
set(gcf, 'PaperPosition', [-0.75 0 8.75 6]);
set(gcf, 'PaperSize', [7.5 6]);
print -dpdf fig7.pdf;


%effective medium parameter 
eps2percentF = @(fi) abs(abs(interp1(fModel,epsMG,fi)/interp1(f,eps,fi)-1)-0.02);
mu2percentF = @(fi) abs(abs(interp1(f,mu,fi)-1)-0.02);
[f2eps,~] = fminsearch(eps2percentF,4)
[f2mu,~] = fminsearch(mu2percentF,4)
metaRatio = 2*pi/(real(interp1(f,n,f2eps))*kF(f2eps)*d)

