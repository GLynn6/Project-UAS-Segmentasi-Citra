clear all
close all
clc

img = imread('xiao1.jpg');
im_gray = rgb2gray(img);

bw_xiao = im2bw(im_gray,.99);
bw1 = imcomplement(bw_xiao);

bw2 = imfill(bw1,'holes');
bw2 = bwareaopen(bw1,100);
str = strel('disk',5);
bw2 = imerode(bw1, str);

subplot(3,3,1),imshow(img);title("Citra Original");
subplot(3,3,2),imshow(im_gray);title("Citra Grayscale ");
subplot(3,3,3),imshow(bw_xiao);title("Citra Segmentasi");
subplot(3,3,4),imshow(bw1);title("Citra Operasi Komplemen");
subplot(3,3,5),imshow(bw2);title("Citra Operasi Morfologi");
