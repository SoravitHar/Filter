c = imread('a.jpeg');
d = rgb2gray(c);
a = double(d);
weight = [0 1 0;1 2 1;0 1 0];
for u=1:size(a,1)
    for v=1:size(a,2)
        z=[];
        x=1;
        for i=1:3
            for j=1:3
                if (u+i)>2 && (v+j) >2
                    if (u+i-2) <size(a,1)&& (v+j-2) <size(a,2)
                        if weight(i,j) ==1;
                            z(x) = a(u+i-2,v+j-2);
                            x=x+1;
                        end
                    end
                end
            end
        end
        b(u,v) = median(z);
    end
end
b = uint8(b);
imshow(b);