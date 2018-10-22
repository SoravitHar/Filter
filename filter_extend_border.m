c = imread('a.jpeg');
a = rgb2gray(c);
lenght = 30;
    for i=1:size(a,1)
        for j=1:size(a,2)
            b(i,j) = a(i,j);
            if i<lenght 
                b(i,j) = a(lenght,j);
            elseif j<lenght
                b(i,j) = a(i,lenght);
            elseif size(a,1)-i<lenght;
                b(i,j) = a(size(a,1)-lenght,j);                
            elseif size(a,2)-j<lenght
                b(i,j) = a(i,size(a,2)-lenght);
            end
        end
    end
    for i=1:size(a,1)
        for j=1:size(a,2)
            if (i<lenght && j<lenght) | (size(a,1)-i<lenght && size(a,2)-j<lenght) | (size(a,1)-i<lenght &&j<lenght) | (i<lenght && size(a,2)-j<lenght)
                b(i,j) = 255;
            end
        end
    end
imshow(b);