function [ f, S ] = readSparamArray( filename, p )
    fid = fopen(filename);
    f = [];
    S = [];
    textscan(fid,'%[^-]');
    textscan(fid,'%[-]');
    while ~feof(fid)
        c = textscan(fid,'%f');
        f = horzcat(f,c{1,1}(1:3*p:size(c{1,1})));
        S = horzcat(S,c{1,1}(2:3*p:size(c{1,1})) .* exp(1i*c{1,1}(3:3*p:size(c{1,1}))*pi/180));
        textscan(fid,'%[^-]');
        textscan(fid,'%[-]');
    end
end