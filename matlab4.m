leavesarray(1) = struct('name',' guava leaf','venation','net veined','margin','entire','class','dicotyledonous');
leaf1 = imread("C:\Users\user\Desktop\guava leaf\leaf 3.jpeg");
figure;
imshow(leaf1)
title('guava leaf');
ds = im2gray(leaf1);
figure;
imshowpair(leaf1,ds,"montage")
title('montage1');
fs = imlocalbrighten(leaf1);
figure;
imshow(fs)
title('brightened1');

S = sum(ds,2);
figure;
plot(S)

leavesarray(2) = struct('name','cariaca leaf','venation','net veined','margin','entire','class','dicotyledonous');
leaf2 = imread("C:\Users\user\Desktop\carica leaf\leaf 2.jpeg");
figure;
imshow(leaf2)
title('cariaca leaf');
figure;
imhist(leaf2);
title('histogram2');
figure;
I = im2gray(leaf2);
% create filter
F =[1 1 1;1 1 1;1 1 1]/9;
H = imfilter(I,F);
imshow(H);
title('filtered carica');


leavesarray(3) = struct('name','mulberry','venation','parallel veined','margin','lobed','class','monocotyledonous');
leaf3 = imread("C:\Users\user\Desktop\mulberry leaf\leaf 15.jpeg");
figure;
imshow(leaf3)
title('mulberry');
figure;
K = im2gray(leaf3);
imshow(K);
title('grayscale');
figure;
Iadj = imadjust(K);
imshow(Iadj);
title('enhanced');
figure;
ds = imbinarize(Iadj);
imshow(ds);
title('binary3');


leavesarray(4) = struct('name','orange','venation','net veined','margin','entire','class','dicotyledonous');
leaf4 = imread("C:\Users\user\Desktop\orange leaf\leaf 10.jpeg");
figure;
imshow(leaf4);
title('orange leaf');
figure;
D = im2gray(leaf4);
imshow(D);
title('grayscale4');
figure;
filter = fspecial('average',[5 5]);
smoothleaf = imfilter(D,filter,'replicate');
imshow(smoothleaf);
title('smooth');
figure;
imhist(D);
title('histogram4');


leavesarray(5) = struct('name','eucalyptus','venation','parallel','margin','obtuse','class','monocotyledpnous');
leaf5 = imread("C:\Users\user\Desktop\eucalyptus leaf\leaf 7.jpeg");
figure;
imshow(leaf5);
title('eucalyptus');
figure;
L = im2gray(leaf5);
imshow(L);
title('grascale5');
figure;
Bw = imbinarize(L);
imshow(Bw);
title('Binary5');
figure;
imhist(Bw);
title('histogram5');
figure;
SE = strel('disk',5);
M = imclose(Bw,SE);
imshow(M);
title('final');
leavesarray(6) = struct('name','coffee leaf','venation','parallel','margin','lobed','class','dicotoyledonous');
leaf6 = imread("C:\Users\user\Desktop\coffee leaf\leaf 9.jpeg");
figure;
imshow(leaf6);
title('coffee leaf');
ds6 = im2gray(leaf6);
figure;
imshowpair(leaf6,ds6,'montage');
title('montage6');
fs6 = imbinarize(ds6);
figure;
imshow(fs6);
title('binary6');
S6 = sum(ds6, 2);
figure;
plot(S6);
title('plot6');