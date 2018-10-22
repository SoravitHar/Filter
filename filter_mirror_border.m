c = imread('a.jpeg');
a = rgb2gray(c);
lenght = 30;
    for i=1:size(a,1)
        for j=1:size(a,2)
            b(i,j) = a(i,j);
            if i<lenght
                for u=1:lenght
                    b(lenght-u+1,j) = a(lenght+u-1,j);
                end
            elseif size(a,1)-i<lenght
                for u=1:lenght
                    b(size(a,1)-lenght+u-1,j) = a(size(a,1)-lenght-u+1,j);
                end
            elseif j<lenght
               for u=1:lenght
                    b(i,lenght-u+1) = a(i,lenght+u-1);
               end
            elseif size(a,2)-j<lenght
                for u=1:lenght
                    b(i,size(a,2)-lenght+u-1) = a(i,size(a,2)-lenght-u+1);
                end
            end
        end
    end
imshow(b);