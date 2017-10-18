function [ f, S11, S21 ] = readSparams( filename, p )
    fileID = fopen(filename);
    textscan(fileID,'%[^-]');
    textscan(fileID,'%[-]');
    c1 = textscan(fileID,'%f');
    textscan(fileID,'%[^-]');
    textscan(fileID,'%[-]');
    c2 = textscan(fileID,'%f');
    f = c1{1,1}(1:3*p:size(c1{1,1}));
    S11 = c1{1,1}(2:3*p:size(c1{1,1})) .* exp(1i*c1{1,1}(3:3*p:size(c1{1,1}))*pi/180);
    S21 = c2{1,1}(2:3*p:size(c2{1,1})) .* exp(1i*c2{1,1}(3:3*p:size(c2{1,1}))*pi/180);
end

