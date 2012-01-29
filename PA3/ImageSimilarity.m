function sim = ImageSimilarity (im1, im2)
% This function computes the "similarity score" between two images. You
% should use the value for the similarity factor value when the two images
% are assigned the same character.
%
% Input:
%   im1, im2: Two images from the provided dataset (they should be 16x8
%     matrices of 0s and 1s).
%
% Output:
%   sim: The similarity score of those images.

a = im1(:);
b = im2(:);

meanSim = 0.283; % Avg sim score computed over held-out data.

cosDist = (a' * b) / (norm(a) * norm(b));

if (cosDist > 3 * meanSim)
    sim = 5.0;
else
    sim = 1.0;
end

end

