function [ f, eps ] = readMatProps( filename, p )
    fileID = fopen(filename);
    textscan(fileID,'%[^-]');
    textscan(fileID,'%[-]');
    c1 = textscan(fileID,'%f');
    textscan(fileID,'%[^-]');
    textscan(fileID,'%[-]');
    c2 = textscan(fileID,'%f');
    f = c1{1,1}(1:2*p:size(c1{1,1}));
    eps = c1{1,1}(2:2*p:size(c1{1,1})) - 1i * c2{1,1}(2:2*p:size(c2{1,1}));
end