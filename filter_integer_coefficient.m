c = imread('a.jpeg');
d = rgb2gray(c);
a = double(d);
filter=[0.075 0.125 0.075;0.125 0.2 0.125;0.075 0.125 0.075];
for u=1:size(a,1)
    for v=1:size(a,2)
        z=0;
        x=0;
        for i=1:3
            for j=1:3
                if (u+i)>2 && (v+j) >2
                    if (u+i-2) <size(a,1)&& (v+j-2) <size(a,2)
                        z = z+a(u+i-2,v+j-2)*filter(i,j);
                        x=x+filter(i,j);
                    end
                end
            end
        end
        b(u,v) = z/x;
    end
end
b = uint8(b);
imshow(b);