clc;
clear all;
close all;
x=imread('C:\Users\vaish\Desktop\5 sem\DIP\project\enc_img.png');  
y=imread('C:\Users\vaish\Desktop\5 sem\DIP\project\rose.jpg');   
 
x=uint16(x);   
y=uint16(y);   
 
[x_row, x_col]=size(x);
 
b=0;k=1;
 
for i=1:x_row
    for j=1:x_col
        if(x(i,j)>=y(i,j))
            a=x(i,j)-y(i,j);
        else
            a=256+x(i,j)-y(i,j);
        end
        
        if(a~=0)
            z(k)=uint8(a);
            k=k+1;
        else
            b=1;
            break;
        end
    end
    if(b==1)
        break;
    end
end
 
fid=fopen('C:\Users\vaish\Desktop\5 sem\DIP\project\decrypted.txt','w');
for i=1:k-1
    fprintf(fid,'%c',z(i));
end

