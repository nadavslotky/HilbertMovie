function [ vector ] = writeHilb ( image )
%WRITEHILB recieves image (must be of size (NxN), where N = 2^M for some
%integer M)
%returns vector of values according to a pseudo-hilbert curve

S = size(image);
if S(1)~=S(2)
    error('Image must be square')
elseif mod(S(1),2)
    error('Each side of the image must be of length 2^M for some integer M)')
end

N = log2(S(1));
H = Hilb(N);

[~,position,~] = unique(H);	% generates position in matrix of each index
                            % of the pseudo-Hilbert curve (e.g. the second
                            % element of "position" is the position in H of
                            % the number 2.
vector = image(position);

end

