clc;
clear all;
close all;
text_file=fopen('C:\Users\vaish\Desktop\5 sem\DIP\project\text.txt','r');
text=fread(text_file,[1,inf],'char');
text=uint16(text);
x=imread('C:\Users\vaish\Desktop\5 sem\DIP\project\rose.jpg');

%if color image is used:
%rgb=imread('C:\Users\vaish\Desktop\5 sem\DIP\project\butterfly.jpg');
%x=rgb2gray(rgb)

x=uint16(x);
[x_row,x_col]=size(x);
c=numel(text);
a=1;
for i=1:x_row
    for j=1:x_col
        if(a<=c)
            
            if(x(i,j)+text(a)>255)
                temp=x(i,j)+text(a)-256;
            else
                temp=x(i,j)+text(a);
            end
            z(i,j)=uint8(temp);
        else
            z(i,j)=uint8(x(i,j));
        end
        a=a+1;
    end
end
imwrite(z,'C:\Users\vaish\Desktop\5 sem\DIP\project\enc_img.png');
imshow(z)

