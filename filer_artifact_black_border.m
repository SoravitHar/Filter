c = imread('a.jpeg');
a = rgb2gray(c);
lenght = 30;
    for i=1:size(a,1)
        for j=1:size(a,2)
            b(i,j) = a(i,j);
            if i<lenght|j<lenght | size(a,1)-i<lenght | size(a,2)-j<lenght
                b(i,j) = 0;
            end
        end
    end
imshow(b);