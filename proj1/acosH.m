function [ w, s, p ] = acosH( z )
s = ones(size(z));
p = zeros(size(z));
w = complex(zeros(size(z)),0);
w(1) = acos( z(1) );
for i = 2:size(z),
    a = acos( z(i) );
    pp = round( (w(i-1)-a)/(2*pi) );
    pm = round( (w(i-1)+a)/(2*pi) );
    wp = a + 2*pi*pp;
    wm =-a + 2*pi*pm;
    if abs( wp-w(i-1) ) <= abs( wm-w(i-1) )
        w(i) = wp;
        p(i) = pp;
        s(i) = 1;
    else
        w(i) = wm;
        p(i) = pm;
        s(i) = -1;
    end
end   
end